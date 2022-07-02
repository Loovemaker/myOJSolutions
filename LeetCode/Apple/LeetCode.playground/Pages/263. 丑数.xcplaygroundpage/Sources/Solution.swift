public extension Solution {
    
    // time beats 100%, space beats 61%
    func isUgly(_ n: Int) -> Bool {
        guard n > 0 else { return false }    // note negative numbers
        
        var n_ = n
        
        for divider in [2, 3, 5] {
            while n_ % divider == 0 {
                n_ /= divider
            }
        }
        
        return n_ == 1
    }
}
