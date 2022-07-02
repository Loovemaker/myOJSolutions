public extension Collection {
    
    // time beats 82%, space beats 58%
    func cartesianProduct<ResultElement>(
        with other: Self, 
        multiplyMethod: (Element, Element) -> ResultElement
    ) -> [ResultElement] {
        var result: [ResultElement] = []
        
        for lElement in self {
            for rElement in other {
                result.append(multiplyMethod(lElement, rElement))
            }
        }
        
        return result
    }
    
}
