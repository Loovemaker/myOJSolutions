public extension Solution {
    
    // time beats 100%, space beats 43%
    func climbStairs(_ n: Int) -> Int {
        guard n > 0 else {
            return 0
        }
        
        // stairs methods count
        var smc = [1, 1, 2, 3, 5, 8, 13, 21, 34]
        
        if n < smc.count {
            return smc[n]
        }
        
        for i in smc.count...n {
            smc.append(smc[i - 1] + smc[i - 2])
        }
        return smc[n]
    }
}
