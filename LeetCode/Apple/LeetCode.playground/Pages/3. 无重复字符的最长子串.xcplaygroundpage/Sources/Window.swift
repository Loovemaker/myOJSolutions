public extension Solution {
    
    //time beats 84%, space beats 43%
    func lengthOfLongestSubstring(_ s: String) -> Int {
        let chars = s.map { $0 }
        
        var result = 0
        var (left, right) = (0, 0)
        
        for (i, c) in chars.enumerated() {
            right = i
            
            while chars[left..<right].contains(c) {
                left += 1
            }
            
            result = max(result, right - left + 1)    // the current char has been added
        }
        
        return result
    }
}
