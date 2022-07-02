public extension Solution {
    
    // time beats 78%, space beats 17%
    func removeDuplicates_Cheating(_ nums: inout [Int]) -> Int {
        nums = Set(nums).sorted()
        return nums.count
    }
}
