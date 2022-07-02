import XCTest
@testable import LeetCode

extension LeetCodeTests {
    
    func test_letterCombinations() {
        typealias Input = String
        typealias Output = [String]
        
        @CPBuilder<Input, Output> var casePairs: [CasePair<Input, Output>] {
            ("23",  ["ad", "ae", "af", "bd", "be", "bf", "cd", "ce", "cf"])
            ("",    [])
            ("2",   ["a", "b", "c"])
        }
        
        casePairs.xctAssertEqual(in: solution.letterCombinations)
    }
}
