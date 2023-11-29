// module.exports = function (_deployer) {
// Use deployer to state migration tasks.
let ClassyCoin = artifacts.require("ClassyCoin.sol");
module.exports = function (deployer) {
  deployer.deploy(ClassyCoin);
};
// };
