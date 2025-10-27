// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract IdentityRegistry {
    address public owner;
    mapping(address => bool) public isVerified;

    constructor() {
        owner = msg.sender;
    }
    //modifier onlyOwner feature added...

    modifier onlyOwner() {
        require(msg.sender == owner, "Not authorized");
        _;
    }

    function registerIdentity(address user) public onlyOwner {
        isVerified[user] = true;
    }

    function verify(address user) public view returns (bool) {
        return isVerified[user];
    }

    function revoke(address user) public onlyOwner {
        isVerified[user] = false;
    }
    function verifyidentity(address user) public view returns (bool) {
        return isVerified[user];
    }

    function registerIdentity(address user) public onlyOwner {
        isVerified[user] = true;
    }
}


