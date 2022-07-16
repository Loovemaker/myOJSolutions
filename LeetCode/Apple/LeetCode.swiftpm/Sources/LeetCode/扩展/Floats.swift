extension FloatingPoint {
    func isClose(to target: Self, epsilon: Self = .leastNormalMagnitude) -> Bool {
        abs(self - target) <= epsilon
    }
}
