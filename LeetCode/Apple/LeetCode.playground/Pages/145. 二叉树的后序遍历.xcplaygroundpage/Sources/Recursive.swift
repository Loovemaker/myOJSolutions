public extension Solution {
    
    // time beats 88%, space beats 96%
    func postorderTraversal(_ root: TreeNode?) -> [Int] {
        guard let root = root else { return [] }
        
        return root.postorderTraversal
    }
}
