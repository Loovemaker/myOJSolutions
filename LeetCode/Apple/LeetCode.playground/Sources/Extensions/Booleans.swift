/// Build a array of booleans
///
/// Usage:
///
///     @BooleanArray var booleans: [Bool] {
///         Solution.twoSum([2, 7, 11, 15], 9) == [0, 1]
///         Solution.twoSum([3, 2, 4], 6) == [1, 2]
///         Solution.twoSum([3, 3], 6) == [0, 2]
///     }
///
///     // conditions == [true, true, false]
///
@resultBuilder
public struct BooleanArray {
    public typealias Component = [Expression]
    public typealias Expression = Bool
    public static func buildExpression(_ element: Expression) -> Component {
        return [element]
    }
    public static func buildOptional(_ component: Component?) -> Component {
        guard let component = component else { return [] }
        return component
    }
    public static func buildEither(first component: Component) -> Component {
        return component
    }
    public static func buildEither(second component: Component) -> Component {
        return component
    }
    public static func buildArray(_ components: [Component]) -> Component {
        return Array(components.joined())
    }
    public static func buildBlock(_ components: Component...) -> Component {
        return Array(components.joined())
    }
}


public extension Array where Self.Element == Bool {
    
    /// whether each element is `true`
    var allTrue: Bool {
        !self.contains(false)
    }
    
    /// assert that all the booleans are true, using `assert()`
    func assertAll() {
        assert(allTrue)
    }
}
