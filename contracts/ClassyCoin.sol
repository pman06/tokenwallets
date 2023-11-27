// SPDX-License-Identifier: MIT
pragma solidity ^0.5.0;

import "openzeppelin-solidity/contracts/token/ERC20/ERC20Detailed.sol";
import "openzeppelin-solidity/contracts/token/ERC20/ERC20Capped.sol";
import "openzeppelin-solidity/contracts/ownership/Ownable.sol";

contract ClassyCoin is ERC20Detailed, ERC20Capped, Ownable{
    
    constructor() ERC20Detailed("Classy Coin", "CYC", 4) ERC20Capped(10000000000) public payable {

    }
}



