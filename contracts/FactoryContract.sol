// SPDX-License-Identifier: MIT

pragma solidity ^0.8.24;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract ERC20Token is ERC20 {
    constructor(string memory name, string memory symbol) ERC20(name, symbol) {
        _mint(msg.sender, 1000000000 * 10**18);
    }
}


contract Factory  {
    ERC20Token[] public deployedTokens;
    function DeployTokens(string memory name, string memory symbol) public {
        ERC20Token newToken = new ERC20Token(name, symbol);
        deployedTokens.push(newToken);
    }
} 
