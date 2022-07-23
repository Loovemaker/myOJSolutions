import XCTest
@testable import LeetCode

extension LeetCodeTests {
    
    func test_removeNthFromEnd() {
        typealias Input = (ListNode?, Int)
        typealias Output = ListNode?
        
        @CPBuilder<Input, Output> var casePairs: [CasePair<Input, Output>] {
            ((.init(from: 1 ... 5), 2), .init(from: [1, 2, 3, 5]))
            ((.init(from: [1]), 1), .init(from: []))
            ((.init(from: [1, 2]), 1), .init(from: [1]))
        }
        
        casePairs.xctAssertEqual(in: solution.removeNthFromEnd)
    }
}

