var contractA = artifacts.require('./ContractA.sol')

module.exports = function (deployer, network) {
  var address
  
  switch (network) {
    // This needs to match with the network keys defined in truffle.js
    case "ropsten":
      address = "0xbf5689555a472dbc80d9c7449ed73049844f1ef7"
      break
  }

  deployer.deploy(contractA, address)
}
