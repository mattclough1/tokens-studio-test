import Foundation

extension String {
    func camelCased() -> String {
        let words = split(separator: " ")
        let wordsToCap = words[1...]
        let newFirst = words[0].prefix(1).lowercased() + words[0].dropFirst()
        let rest = wordsToCap.map { $0.prefix(1).capitalized + $0.dropFirst() }.joined(separator: "")
        return [newFirst, rest].joined(separator: "")
    }
    
    /// Returns a new string, with the prefix deleted if it exists.
    func deletingPrefix(_ prefix: String) -> String {
        guard hasPrefix(prefix) else { return self }
        return String(dropFirst(prefix.count))
    }
    
    /// Returns a new string, with the prefix added if does not already exist.
    func addingPrefixIfNeeded(_ prefix: String) -> String {
        guard !hasPrefix(prefix) else { return self }
        return prefix + self
    }
}
