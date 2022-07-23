import XCTest
@testable import LeetCode

extension LeetCodeTests {
    
    func test_addTwoNumbers() {
        typealias Input = (ListNode?, ListNode?)
        typealias Output = ListNode?
        
        @CPBuilder<Input, Output> var casePairs: [CasePair<Input, Output>] {
            ((.init(from: [2, 4, 3]), .init(from: [5, 6, 4])), .init(from: [7, 0, 8]))
            ((.init(from: [0]), .init(from: [0])), .init(from: [0]))
        }
        
        casePairs.xctAssertEqual(in: solution.addTwoNumbers)
    }
}

