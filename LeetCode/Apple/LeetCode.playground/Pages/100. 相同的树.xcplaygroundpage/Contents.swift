//
//给你两棵二叉树的根节点 p 和 q ，编写一个函数来检验这两棵树是否相同。
//
//如果两个树在结构上相同，并且节点具有相同的值，则认为它们是相同的。
//
// 
//
//示例 1：
//
//
//输入：p = [1,2,3], q = [1,2,3]
//输出：true
//示例 2：
//
//
//输入：p = [1,2], q = [1,null,2]
//输出：false
//示例 3：
//
//
//输入：p = [1,2,1], q = [1,1,2]
//输出：false
// 
//
//提示：
//
//两棵树上的节点数目都在范围 [0, 100] 内
//-104 <= Node.val <= 104
//
//来源：力扣（LeetCode）
//链接：https://leetcode.cn/problems/same-tree
//著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。

@BooleanArray var tests: [Bool] {
    let tree1 = TreeNode(1, TreeNode(2), TreeNode(3))
    let tree2 = TreeNode(1, TreeNode(2), TreeNode(3))
    let tree3 = TreeNode(1, left: TreeNode(2))
    let tree4 = TreeNode(1, right: TreeNode(2))
    let tree5 = TreeNode(1, TreeNode(2), TreeNode(1))
    let tree6 = TreeNode(1, TreeNode(1), TreeNode(2))
    
    solution.isSameTree(tree1, tree2)
    !solution.isSameTree(tree3, tree4)
    !solution.isSameTree(tree5, tree6)
}
tests.assertAll()
