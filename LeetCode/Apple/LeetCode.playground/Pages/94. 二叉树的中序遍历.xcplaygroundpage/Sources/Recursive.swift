public extension Solution {
    
    // time beats 84%, space beats 96%
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
        guard let root = root else { return [] }
        
        return root.inorderTraversal
    }
}
