/**
 * Definition for singly-linked list.
 * function ListNode(val) {
 *     this.val = val;
 *     this.next = null;
 * }
 */
/**
 * @param {ListNode} head
 * @return {ListNode}
 */
var middleNode = function(head) {
  let current = head;
  let counter = 0;
  let hash = {};

  while (current) {
    counter++;
    hash[counter] = current;
    current = current.next;
  }

  let middleValue;

  if (counter % 2 === 1) {
    middleValue = Math.ceil(counter / 2);
  } else {
    middleValue = Math.ceil(counter / 2) + 1;
  }

  return hash[middleValue];
};
