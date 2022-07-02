public extension Collection {
    
    func cartesianProduct<ResultElement>(
        with other: Self,
        productMethod: (Element, Element) -> ResultElement
    ) -> [ResultElement] {
        var result: [ResultElement] = []
        
        for lElement in self {
            for rElement in other {
                result.append(productMethod(lElement, rElement))
            }
        }
        
        return result
    }
    
}
