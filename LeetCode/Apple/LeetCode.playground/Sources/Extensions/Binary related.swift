public extension Int {
    var isInt32: Bool {
        (self < 1<<31) && (self >= -(1<<31))
    }
}
