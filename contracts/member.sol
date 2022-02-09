// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "Detbank"  //det
import "Def"  //def
//Detbank 칩사용

contract member {

    uint256 public tex;
    uint256 public sum;
    mapping(address => my) public myinfo; //어카운트 오너
    address det;
    address def;

    struct my {
    uint8[2]state; //레벨 공력 방어력
    uint32[5]item;//경험치 루비  사파이어  금 보석 에메랄드
    uint32 box; //랜덤 박스
    address mento ;
    address[]menty;
    uint256 depo;
    uint8 ring;  //에메랄드
     }

    constructor(Detbank _detbank,Def _def)public {
       detbank=_detbank;
       def=_deff;
       myinfo[msg.sender]state[0]=1;
       myinfo[msg.sender]state[1]=1;
       myinfo[msg.sender]state[2]=1;
       myinfo[msg.sender]ring=1;
       myinfo[msg.sender]box=1000;
    }


    function meberjoin(address memory _mento) public {
       require(myinfo[_mento]state[0]>=1);
       require(detbank.myinfo[msg.sender]chip>=300000);  //30만 det 가입
       detbank.chipup(2,msg.sender,0,300000,0);//fn,user,pn,mn,loan

       for(i=0; i<3; i++){
        myinfo[msg.sender]state[i]=1;
      }
        myinfo[msg.sender]ring=1;
        myinfo[msg.sender]mento=_mento;
        myinfo[_mento]menty.push(msg.sender);
        sum+=1;
     }

    function depoup(uint8 memory _fn,address memory _user,uint memory _num)public {   //외부계약 호출
      require(def.fa[_fn]==msg.sender);
      require(myinfo[_user]state[0]>=1); //유저 레벨 1이상
      address memory tm=myinfo[_user]mento; //인스턴스
      myinfo[tm]depo+=_num*myinfo[tm]state[0]/100; //유저의 멘토
      myinfo[myinfo[tm]mento]depo+=_num*myinfo[myinfo[tm]mento]state[0]/100; //유저의 멘토의 멘토
      }


    function stateup(uint8 memory _num)public{
      require(0<= _num=<2); //스테이트 맥스 2
      require(myinfo[msg.sender]item[_num]>=20**myinfo[msg.sender]state[_num] ); //
      myinfo[msg.sender]item[_num]-=20**myinfo[msg.sender]state[_num]; //아이템 차감
      uint memory rn=random();   //난수 가져오기 1~25
      if(myinfo[msg.sender]ring+rn>myinfo[msg.sender]state[_num]){
       myinfo[msg.sender]state[_num]+=1;
      }
    }

    function random()public view returns(uint256) {
    return uint256(keccak256(block.difficulty,block.number,now))%25+1;
    }

    function ringup( )public  {
    require(myinfo[msg.sender]ring>=1); //
    require(myinfo[msg.sender]item[5]>=ring); //
    uint memory rn=random();
    myinfo[msg.sender]item[5]-=20**myinfo[msg.sender]ring;
    if(myinfo[msg.sender]ring<rn){
      myinfo[msg.sender]ring+=1;
     }
    }
    function boxup(uint8 memory _fn,address memory _user,uint8 memory pn,uint8 memory mn)public  {
    require(def.fa[]); //
    require(myinfo[msg.sender]item[5]>=ring); //


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
