/**
 * @param {number} num
 * @return {number}
 */

var findComplement = function(num) {
  let binaryNum = num.toString(2);
  let binaryArray = binaryNum.split("");

  for (var i = 0; i < binaryArray.length; i++) {
    if (binaryArray[i] == 1) {
      binaryArray[i] = 0;
    } else {
      binaryArray[i] = 1;
    }
  }

  let reverseBinary = binaryArray.join("");
  let complement = parseInt(reverseBinary, 2);

  return complement;
};
