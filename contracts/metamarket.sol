// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;


contract metamarket {

    uint256 [ ] public ml;
    uint256 public depo;
    mapping(uint256 => meta) public ms; //어카운트 오너

    address admin;

    struct meta {
    uint256 pass; //보안?
    uint8 state;
    uint256 aid; //어카운트 id
    address owner;
    uint256 price;

    }
    constructor(int256 _aid,uint256 _price, uint256 _pass)public {
       admin=msg.sender;
       ms[tml]aid=_aid;
       ms[tml]price=_price;
       ms[tml]pass=_pass;   // 규칙 모니터 비번  어카운트와 동일
       ms[tml]owner=msg.sender;
       ms[tml]state=1;
       ml.push(0);
    }


    function creat(uint256 _aid,uint256 _price, uint256 _pass) public {
       require(admin==msg.sender);
       uint256 memory tml= ml.length;  //임시  ml 번호
       ms[tml]aid=_aid;
       ms[tml]price=_price;
       ms[tml]pass=_pass;   // 규칙 모니터 비번  어카운트와 동일
       ms[tml]owner=msg.sender;
       ms[tml]state=1;
       ml.push(tml);
    }

    function buy(uint256 _aid)public payable{
      require(msg.value==ms[_aid]price);
      require(ms[_aid]state==1);
      ms[_aid]owner=msg.sender;
      ms[_aid]state=2;
      depo+=ms[_aid]price;   //member 컨트렉트와 연동하여  상위 40%수당 지급
      }


    function sell(uint256 _aid)public{
      require(ms[_aid]state=2);
      require(ms[_aid]owner==msg.sender);
      ms[_aid]state=3

    }

    function comfirm(uint256 _aid,uint256 _price)public {
    require (ms[_aid]state=3);
    require(admin==msg.sender);
    if(_price>=1){
        0ms[_aid]owner.transfer.(_price);
    ms[_aid]state=4;
     }
    }

    function getstate1(uint256 _aid )public view returns(uint256,uint256,address,uint8) {
    require(ms[_aid]state==1);
    return
       ms[_aid]aid;
       ms[_aid]price;
       ms[_aid]owner;
       ms[_aid]state;
    }
    function getstate2(uint256 _aid )public view returns(uint256,uint256,address,uint8) {
    require(ms[_aid]state==2);
    return
       ms[_aid]aid;
       ms[_aid]price;
       ms[_aid]owner;
       ms[_aid]state;
    }

    function getstate3(uint256 _aid )public view returns(uint256,uint256,address,uint8) {
    require(ms[_aid]state==3);
    return
       ms[_aid]aid;
       ms[_aid]price;
       ms[_aid]owner;
       ms[_aid]state;
    }

    function getpass(uint256 _aid )public view returns(uint256) {
    require(ms[_aid]owner==msg.sender);
    return
       ms[_aid]pass;
    }


    function mllength( ) public view returns (uint256){
        return
        ml.length;
    }
}
