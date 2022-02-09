// SPDX-License-Identifier: MIT


pragma solidity >=0.7.0 <0.9.0;

import "./Det.sol";
import "./Def.sol";

 contract Detsale {
    Det public det;
    uint256 public price;
    uint256 public sold;
    uint256 public dettvl;
    event Sell(address indexed _buyer, uint256 indexed _amount);

    constructor(Det _det,Def _def,uint256 _price,uint256 _dettvl)public {
     admin=msg.sender;
     det=_det;
     Def=_def;
     price=_price;
     dettvl=_dettvl;
     }

    function buyTokens(uint256 _num)public payable{

        uint256 memory pay=_num*price;
        require(msg.value == _num);
        require(tvl>=pay);
        sold += pay;
        dettvl -= pay;
        emit Sell(msg.sender, pay);
        require(det.transfer(msg.sender,pay));
    }

    function sellTokens(uint256 _num) public
    {
        require(det.transfer(address(this),_num));
        require(price =< _num);
        sold - = _num;
        dettvl+ = _num;
        
        uint256 pay=_num/price;
        require(msg.sender.transfer(pay));
        emit Sell(msg.sender,pay);
    }
}
