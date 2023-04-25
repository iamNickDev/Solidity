// SPDX-License-Identifier: MIT

pragma solidity ^0.8.14;

contract person {
    string public name;
    uint256 public age;

    function setName(string memory _name) public {
        name = _name;
    }

    function getName() public view returns (string memory _name) {
        return name;
    }

    function setAge(uint256 _age) public {
        age = _age;
    }

    function getAge() public view returns (uint256 _age) {
        return age;
    }
}
