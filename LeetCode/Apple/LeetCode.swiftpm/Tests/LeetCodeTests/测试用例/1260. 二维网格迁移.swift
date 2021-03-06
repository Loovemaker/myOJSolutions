import XCTest
@testable import LeetCode

extension LeetCodeTests {
    
    func test_shiftGrid() {
        typealias Element = Int
        typealias Input = ([[Element]], Int)
        typealias Output = [[Element]]
        
        @CPBuilder<Input, Output> var casePairs: [CasePair<Input, Output>] {
            ((
                [[1,2,3],[4,5,6],[7,8,9]], 1),
                [[9,1,2],[3,4,5],[6,7,8]]
            )
            ((
                [[3,8,1,9],[19,7,2,5],[4,6,11,10],[12,0,21,13]], 4),
                [[12,0,21,13],[3,8,1,9],[19,7,2,5],[4,6,11,10]]
            )
            ((
                [[1,2,3],[4,5,6],[7,8,9]], 9),
                [[1,2,3],[4,5,6],[7,8,9]]
            )
        }
        
        casePairs.xctAssertEqual(in: solution.shiftGrid)
    }
}

