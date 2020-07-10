var TestLurien=artifacts.require ("contracts/TestLurien.sol");
module.exports = function(deployer) {
      deployer.deploy(TestLurien);
}