public extension Solution {
    
    // time beats 82%, space beats 58%
    func letterCombinations(_ digits: String) -> [String] {
        let mapping = [
            2: ["a", "b", "c"],
            3: ["d", "e", "f"],
            4: ["g", "h", "i"],
            5: ["j", "k", "l"],
            6: ["m", "n", "o"],
            7: ["p", "q", "r", "s"],
            8: ["t", "u", "v"],
            9: ["w", "x", "y", "z"],
        ]
        
        var result = [""]
        
        for digitChar in digits {
            let digit = Int(String(digitChar))!
            let alphabets = mapping[digit]!
            
            result = result.cartesianProduct(with: alphabets, multiplyMethod: +)
        }
        
        if result == [""] { result = [] }
        return result
    }
}
