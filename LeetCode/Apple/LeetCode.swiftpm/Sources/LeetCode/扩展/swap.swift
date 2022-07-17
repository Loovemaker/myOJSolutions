func swap<T>(_ a: inout T, _ b: inout T) {
    let t = a
    a = b
    b = t
}
