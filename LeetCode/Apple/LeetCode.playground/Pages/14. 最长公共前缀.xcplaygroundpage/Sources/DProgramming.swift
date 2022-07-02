public extension Solution {
    
    // time beats 65%, space beats 23%
    func longestCommonPrefix(_ strs: [String]) -> String {
        guard strs.count >= 2 else {
            return strs.first ?? ""
        }
        
        let charss: [[Character]] = strs.map { $0.map { $0 } }
        var result = ""
        
        for position in 0 ..< charss.map({ $0.count }).min()! {
            let current = charss[0][position]
            
            for chars in charss[1 ..< charss.count] {
                guard chars[position] == current else {
                    return result
                }
            }
            
            result.append(current)
        }
        
        return result
    }
}
