import XCTest
import LeetCode

struct CasePair<Input, Output>: CanExecute
where Output: Equatable {
    public let input: Input
    public let output: Output

    func put(into algorithm: (Input) -> Output)
    -> (expected: Output, actual: Output) {
        
        (output, algorithm(input))
    }
}

extension Collection where Element: CanExecute {
    typealias Input = Element.Input
    typealias Output = Element.Output
    
    func xctAssertEqual(in algorithm: (Input) -> Output) {
        for element in self {
            let results = element.put(into: algorithm)
            XCTAssertEqual(results.expected, results.actual)
        }
    }
}

@resultBuilder
struct CPBuilder<Input, Output> where Output: Equatable {
    public typealias Component = [CasePair<Input, Output>]
    public typealias Expression = (input: Input, output: Output)
    public static func buildExpression(_ element: Expression) -> Component {
        return [.init(input: element.input, output: element.output)]
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

@resultBuilder
struct TrueCPBuilder<Element>{
    public typealias Component = [CasePair<Element, Bool>]
    public typealias Expression = Element
    
    public static func buildExpression(_ element: Expression) -> Component {
        return [.init(input: element, output: true)]
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

@resultBuilder
struct FalseCPBuilder<Element> where Element: Equatable {
    public typealias Component = [CasePair<Element, Bool>]
    public typealias Expression = Element
    
    public static func buildExpression(_ element: Expression) -> Component {
        return [.init(input: element, output: false)]
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

protocol CanExecute: HasInputOutput {
    func put(into algorithm: (Input) -> Output)
    -> (expected: Output, actual: Output)
}

protocol HasInputOutput {
    associatedtype Input
    associatedtype Output: Equatable
    var input: Input { get }
    var output: Output { get }
}
