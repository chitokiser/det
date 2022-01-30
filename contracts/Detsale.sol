// SPDX-License-Identifier: MIT


pragma solidity >=0.7.0 <0.9.0;

import "./Det.sol";
import "./Def.sol";

 contract Detsale {
    Det public det;
    uint256 public price;
    uint256 public sold;
    address admin;
    event Sell(address indexed _buyer, uint256 indexed _amount);

    constructor(Det _det,Def _def,uint256 _price)public {
     admin=msg.sender;
     det=_det;
     Def=_def;
     price=_price;
     }

    function buyTokens(uint256 _num)public payable{

        uint256 memory pay=_num*price;
        require(msg.value == _num);
        require(det.balanceOf(this)>=pay);
        sold += pay;
        emit Sell(msg.sender, pay);

        require(det.transfer(msg.sender,pay));
    }

    function sellTokens(uint256 _num) public
    {
        require(det.msg.value == _num);
        sold -= _num;

        uint pay=_num/price;
        require(msg.sender.transfer(pay));
        emit Sell(msg.sender,pay);
    }
}
