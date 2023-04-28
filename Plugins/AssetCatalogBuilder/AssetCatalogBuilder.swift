import Foundation
import PackagePlugin

@main
struct AssetCatalogBuilder: BuildToolPlugin {
    /// This entry point is called when operating on a Swift package.
    func createBuildCommands(context: PackagePlugin.PluginContext, target: PackagePlugin.Target) throws -> [PackagePlugin.Command] {
                
        let inputDir = target.directory
            .removingLastComponent()
            .removingLastComponent()
            .appending(subpath: "DesignTokens")
                
        let outputDir = context.pluginWorkDirectory.appending("DesignTheme.xcassets")
                try FileManager.default.createDirectory(atPath: outputDir.string,
                    withIntermediateDirectories: true)
        
        let cmd = PackagePlugin.Command.buildCommand(
            displayName: "Running AssetCatalogGenerator",
            executable: try context.tool(named: "AssetCatalogGenerator").path,
            arguments: ["--indir=\(inputDir)", "--outdir=\(outputDir)"]
        )

        return [cmd]
    }
}
