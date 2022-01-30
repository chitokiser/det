// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (token/ERC20/ERC20.sol)

pragma solidity >=0.7.0 <0.9.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

contract Det is ERC20{

  address public admin;

    constructor(string memory name, string memory symbol )ERC20(name,symbol){
        _mint(msg.sender,100000000000000000000*10*uint(decimals()));
        admin=msg.sender;
    }
 function mint(uint256 _num)public{

    require(admin==msg.sender);
    _mint(msg.sender, _num);
 }

}
