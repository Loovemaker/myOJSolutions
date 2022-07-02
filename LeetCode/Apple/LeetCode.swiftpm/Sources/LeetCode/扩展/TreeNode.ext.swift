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
