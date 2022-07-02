public extension Solution {
    
    //time beats 97%, space beats 52%
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var begin = 0, end = nums.count
        
        while true {
            let cursor = (begin + end) / 2
            
            guard begin < end else {
                return cursor
            }
            
            if cursor < nums.count && target > nums[cursor] {
                begin = cursor + 1
            } else if cursor > 0 && target <= nums[cursor - 1] {
                end = cursor - 1
            } else {
                return cursor
            }
        }
    }
}
