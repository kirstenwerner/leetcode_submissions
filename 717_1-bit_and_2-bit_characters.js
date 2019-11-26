/**
 * @param {number[]} bits
 * @return {boolean}
 */
var isOneBitCharacter = function(bits) {
  let result;

  while (bits.length > 1) {
    if (bits[0] == 0) {
      bits = bits.slice(1);
    } else {
      bits = bits.slice(2);
    }
  }

  bits[0] == 0 ? (result = true) : (result = false);

  return result;
};
