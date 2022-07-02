/// Node of singly-linked list
public class ListNode {
    public var val: Int
    public var next: ListNode? = nil
    public init(_ val: Int, _ next: ListNode? = nil) { 
        self.val = val
        self.next = next
    }
    public convenience init() {
        self.init(0)
    }
}
