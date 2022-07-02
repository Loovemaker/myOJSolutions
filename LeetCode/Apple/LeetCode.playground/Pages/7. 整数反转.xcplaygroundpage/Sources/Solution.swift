public extension Solution {

    // time beats 95%, space beats 57%
    func reverse(_ x: Int) -> Int {
        var current = x
        var result = 0
        
        let exponent = 10
        
        while current != 0 {
            result *= exponent
            
            result += current % exponent

            current = current / exponent
        }
        guard result.isInt32 else {
            return 0
        }
        
        return result
    }
    
}
