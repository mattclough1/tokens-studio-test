import Foundation
import ArgumentParser

@main
@available(macOS 13.0.0, *)
struct AssetCatalogGenerator: ParsableCommand {

    static var configuration = CommandConfiguration(
        commandName: "assetCatalogGenerator",
        abstract: "Generates an asset catalog from theme files."
    )
    
    @Option(name: .shortAndLong, help: "The source directory")
    var indir: String

    @Option(name: .shortAndLong, help: "the destination directory")
    var outdir: String
    
    mutating func run() throws {
        let sourceDir = URL(filePath: indir, directoryHint: .isDirectory)

        let darkFileUrl = sourceDir.appendingPathComponent("token-dark-theme.json", isDirectory: false)
        let lightFileUrl = sourceDir.appendingPathComponent("token-light-theme.json", isDirectory: false)
        
        let darkTheme = TokenTheme(fileURL: darkFileUrl, rootKey: "Dark Theme", appearance: .dark)
        let lightTheme = TokenTheme(fileURL: lightFileUrl, rootKey: "Light Theme", appearance: .light)
        
        let destinationUrl = URL(filePath: outdir, directoryHint: .isDirectory)
        
        let info = ColorSet.Contents.Metadata(author: "com.onxmaps.Caldera", version: 1)
        let infoData = try encoder.encode(info)
        let infoURL = destinationUrl.appendingPathComponent("Contents.json")
        try infoData.write(to: infoURL)
        
        let themes = [darkTheme, lightTheme].compactMap { $0 }
        let fm = FileManager.default
        let componentColorSets = Self.buildComponentColorSets(from: Set(themes))
        
        componentColorSets.forEach { component, colorSets in
            let componentDir = destinationUrl.appendingPathComponent(component.rawValue.capitalized, isDirectory: true)
            
            do {
                try fm.createDirectory(at: componentDir, withIntermediateDirectories: true)
                
                for colorSet in colorSets {
                    let colorDir = componentDir.appendingPathComponent("\(colorSet.name).colorset", isDirectory: true)
                    try fm.createDirectory(at: colorDir, withIntermediateDirectories: true)
                    let data = try encoder.encode(colorSet.contents)
                    let contentsURL = colorDir.appendingPathComponent("Contents.json")
                    try data.write(to: contentsURL)
                }
            } catch {
                // Nothing to see here, move along.
            }
        }
        
        print("Asset catalog created: \(outdir)")
    }
    
    static func buildColorSets(from themes: Set<TokenTheme>) -> [ColorSet]  {
        // combine all the color tokens
        let allTokens = themes.flatMap { $0.colors }
        // unique tokens ids
        let tokenIds = Set(allTokens.map { $0.id })
        
        return tokenIds.map { id in
            // create a color set using all tokens with this id
            let tokens = allTokens.filter { id == $0.id }
            return ColorSet(
                contents: ColorSet.Contents(colorTokens: Set(tokens)),
                name: id
            )
        }
    }
    
    /// Builds asset catalog color sets grouped by component.
    static func buildComponentColorSets(from themes: Set<TokenTheme>) -> [TokenTheme.Component: [ColorSet]] {
        // combine all the color tokens
        let allTokens = themes.flatMap { $0.colors }
        // group the tokens by component
        let componentColorTokens = Dictionary(grouping: allTokens, by: { $0.component })
        
        return componentColorTokens.mapValues { tokens in
            // unique tokens ids
            let tokenIds = Set(tokens.map { $0.id })
            
            return tokenIds.map { id in
                // create a color set using all tokens with this id
                let tokens = allTokens.filter { id == $0.id }
                return ColorSet(
                    contents: ColorSet.Contents(colorTokens: Set(tokens)),
                    name: id
                )
            }
        }
    }
    
    lazy var encoder: JSONEncoder = {
        let encoder = JSONEncoder()
        encoder.outputFormatting = .prettyPrinted
        return encoder
    }()
}

