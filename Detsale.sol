// SPDX-License-Identifier: MIT


pragma solidity ^0.4.22;

//인터페이스 구축
interface usdc {     //usdethup 컨트렉트
  function ETHUSD() external view returns(uint256);
}

interface detc {     //det 컨트렉트
  function transfer(address _addr,uint256 _pay) external;

  function balanceOf(address _addr) external view returns(uint256);
}

 contract Detsale {  //제목?
     usdc price;
     detc det;
     uint256 public sold;

    event Sell(address indexed _buyer, uint256 indexed _amount);

    constructor(address _usdc,address _detc) public {
        price=usdc(_usdc);
        det=detc(_detc);
    }

   function buyTokens(uint256 _num)public payable{
        require(_num>1);
        require(msg.value == _num);
        require(det.balanceOf(address(this))>=_num*price.ETHUSD());
        sold +=_num*price.ETHUSD() ;
        emit Sell(msg.sender, _num*price.ETHUSD());
        det.transfer(msg.sender,_num*price.ETHUSD());
    }

    function sellTokens(uint256 _num) public  {
        require(_num>=price.ETHUSD());
        det.transfer(address(this),_num);
        sold -= _num;

        msg.sender.transfer(_num/price.ETHUSD());
        emit Sell(msg.sender,_num/price.ETHUSD());

    }

    function g2() public view returns(uint256){
     return price.ETHUSD();
    }
      function detbalances() public view returns(uint256){
     return det.balansOf[address (this)];
    }
     
 }
