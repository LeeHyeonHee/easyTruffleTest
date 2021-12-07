var Bank = artifacts.require("Bank");
module.exports = async function(_deployer) {
  let ownerAddress = (await web3.eth.getAccounts())[0];
  console.log(ownerAddress)
  _deployer.deploy(Bank, ownerAddress);
};
