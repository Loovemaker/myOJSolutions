public extension Solution {
    
    // time beats 78%, space beats 92%
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        if nums.count <= 1 { return nums.count }
        
        var left = 0
        for right in 1 ..< nums.count {
            if nums[left] != nums[right] {
                left += 1
                nums[left] = nums[right]
            }
        }
        
        let count = left + 1
        nums = Array(nums[0 ..< count])
        
        return count
    }
}
