public extension Solution {
    
    // time beats 45%, space beats 92%
    func maxArea(_ height: [Int]) -> Int {
        var result = 0
        
        var (left, right) = (0, height.count - 1)
        
        while left < right {
            let (height_left, height_right) = (height[left], height[right])
            let currentHeight = min(height_left, height_right)
            let area = currentHeight * (right - left)
            result = max(result, area)
            
            if height_left < height_right {
                left += 1
            } else {
                right -= 1
            }
        }
        
        return result
    }
}
