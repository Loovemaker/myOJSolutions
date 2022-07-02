public extension Solution {
    
    // time beats 77%, space beats 19%
    func strStr(_ haystack: String, _ needle: String) -> Int {
        guard !needle.isEmpty else { return 0 }
        
        let parts = haystack.components(separatedBy: needle)
        let count = parts[0].count
        return count == haystack.count ? -1 : count
    }
}
