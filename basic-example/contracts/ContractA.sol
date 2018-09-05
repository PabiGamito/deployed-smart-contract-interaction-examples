pragma solidity ^0.4.22;

import "./IContractB.sol";

contract ContractA {
    IContractB internal CONTRACTB;

    constructor (address _address) public {
        CONTRACTB = IContractB(_address);
    }

    function foo() view public returns (bool _barResult) {
        // Calls a function in the the already deployed ContractB
        return CONTRACTB.bar();
    }
}
