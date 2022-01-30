// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;
//부동산 st 거래소
import //이미 배포되어 있는 dettoken import 방법?

contract retEX{

  uint265 public depo;   //50% loan가능
  uint265 public sold;
  uint265 public allow;
  uint265 public price;

  mapping (address => my) myinfo;
  mapping (uint256 =>loan)ls;  //st인덱스를 받아 부채에 따라 대출현황 분석

  struct my {
  uint256 st;
  uint256 allowt;
  uint256 mydepo;    //withdraw 처리 예정

  }

  struct loan {
  uint256
  }

constructor(uint256 _depo)
depo=_depo;
sold=50000;
allow=1000
price=1000;
}

function buyst(uint256 _num)public{
  require (sold+_num<=5000000);
  require(det.msg.value==_num*price);
  myinfo[msg.sender]st+=_num;
  myinfo[msg.sender]allowt=now;
}

function priceup()internal {
  allow=depo/sold/100;  //초기 depo:5억  sold=50000 price=1000
  price=(allow*10)+(sold/5000);

}

function allowcation()internal{

}
