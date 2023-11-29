// module.exports = function (deployer) {
// Use deployer to state migration tasks.
let Mansions = artifacts.require("Mansions.sol");
module.exports = function (deployer) {
  deployer.deploy(Mansions);
};
// };
