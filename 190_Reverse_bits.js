/**
 * @param {number} n - a positive integer
 * @return {number} - a positive integer
 */
var reverseBits = function(n) {
  const arr = n.toString(2).split("");
  arr.unshift(...new Array(32 - arr.length).fill(0));
  return parseInt(arr.reverse().join(""), 2);
  return n;
};
