extension TreeNode {
    convenience init(_ val: Int, left: TreeNode? = nil, right: TreeNode? = nil) {
        self.init(val, left, right)
    }
}

extension TreeNode {
    var preorderTraversal: [Int] {
        [self.val] + (self.left?.preorderTraversal ?? []) + (self.right?.preorderTraversal ?? [])
    }
    var inorderTraversal: [Int] {
        (self.left?.inorderTraversal ?? []) + [self.val]  + (self.right?.inorderTraversal ?? [])
    }
    var postorderTraversal: [Int] {
        (self.left?.postorderTraversal ?? []) + (self.right?.postorderTraversal ?? []) + [self.val] 
    }
}

extension Optional: Equatable where Wrapped: TreeNode {
    public static func == (lhs: TreeNode?, rhs: TreeNode?) -> Bool {
        (lhs === nil && rhs === nil) || (
            lhs?.val == rhs?.val
            && lhs?.left == rhs?.left
            && lhs?.right == rhs?.right
        )
    }
}
extension TreeNode: Equatable {
    public static func == (lhs: TreeNode, rhs: TreeNode) -> Bool {
        lhs.val == rhs.val
        && lhs.left == rhs.left
        && lhs.right == rhs.right
    }
}
