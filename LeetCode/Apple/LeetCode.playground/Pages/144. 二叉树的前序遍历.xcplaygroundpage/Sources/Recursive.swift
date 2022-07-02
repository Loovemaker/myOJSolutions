public extension Solution {
    
    // time beats 82%, space beats 88%
    func preorderTraversal(_ root: TreeNode?) -> [Int] {
        guard let root = root else { return [] }
        
        return root.preorderTraversal
    }
}
