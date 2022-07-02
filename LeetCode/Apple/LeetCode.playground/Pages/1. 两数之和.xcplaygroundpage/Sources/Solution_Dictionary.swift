public extension Solution {
    
    // time beats 82%, space beats 13%
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var unpairedIndices = Dictionary<Int, Int>()
        
        for i in 0..<nums.count {
            let current = nums[i], another = target - current
            
            if let index = unpairedIndices[another] {
                return [index, i]
            }
            
            unpairedIndices[current] = i
        }
        
        return []
    }
}
