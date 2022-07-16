public extension Solution {
    var removeDuplicates: (_ nums: inout [Int]) -> Int {
        removeDuplicates_Window
    }
    var removeDuplicates_all: [(_ nums: inout [Int]) -> Int] {
        [
            removeDuplicates_Window,
            removeDuplicates_Cheating,
        ]
    }
}

public extension Solution {
    
    /// <doc:26.------------>
    ///
    /// - ⌛️：78%
    /// - 🫙：17%
    func removeDuplicates_Window(_ nums: inout [Int]) -> Int {
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

public extension Solution {
    
    /// <doc:26.------------>
    ///
    /// - ⌛️：78%
    /// - 🫙：92%
    func removeDuplicates_Cheating(_ nums: inout [Int]) -> Int {
        nums = Set(nums).sorted()
        return nums.count
    }
}
