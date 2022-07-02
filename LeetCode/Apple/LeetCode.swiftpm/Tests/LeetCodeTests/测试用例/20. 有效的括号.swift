import XCTest
@testable import LeetCode

extension LeetCodeTests {
    
    func test_isValid() {
        typealias Input = String
        typealias Output = Bool
        
        @TrueCPBuilder<Input> var trueCasePairs: [CasePair<Input, Output>] {
            ""
            "()"
            "[]"
            "{}"
        }
        @FalseCPBuilder<Input> var falseCasePairs: [CasePair<Input, Output>] {
            "(})"
            "["
        }
        
        (trueCasePairs + falseCasePairs).xctAssertEqual(in: solution.isValid)
    }
}

