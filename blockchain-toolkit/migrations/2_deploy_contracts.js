const CompoundInterestCalculator = artifacts.require("CompoundInterestCalculator");

module.exports = function (deployer) {
    deployer.deploy(CompoundInterestCalculator);
};