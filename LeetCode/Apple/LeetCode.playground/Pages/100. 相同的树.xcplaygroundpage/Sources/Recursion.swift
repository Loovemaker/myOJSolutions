public extension Solution {
    
    // time beats 83%, space beats 93%
    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        (p == nil && q == nil) || (
            p?.val == q?.val
                && isSameTree(p?.left, q?.left)
                && isSameTree(p?.right, q?.right)
        )
    }
}
