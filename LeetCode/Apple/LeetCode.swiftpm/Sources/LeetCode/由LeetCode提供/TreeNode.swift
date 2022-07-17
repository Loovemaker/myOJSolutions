public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
    public convenience init(_ val: Int) {
        self.init(val, nil, nil)
    }
    public convenience init() { self.init(0) }
}
