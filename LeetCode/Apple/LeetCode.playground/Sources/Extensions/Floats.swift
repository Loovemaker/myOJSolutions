public let epsilon = 1e-3

public extension Float {
    func isClose(to target: Self, epsilon: Self = Float(epsilon)) -> Bool {
        abs(self - target) <= epsilon
    }
}
