import XCTest
@testable import LeetCode

extension LeetCodeTests {
    
    func test_isPalindrome() {
        typealias Input = Int
        typealias Output = Bool
        
        @TrueCPBuilder<Input> var trueCasePairs: [CasePair<Input, Output>] {
            121
            404
            999
        }
        @FalseCPBuilder<Input> var falseCasePairs: [CasePair<Input, Output>] {
            -121
            -234
        }
        
        (trueCasePairs + falseCasePairs).xctAssertEqual(in: solution.isPalindrome)
    }
}
