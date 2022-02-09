// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "/.Ret"  //Ret
import "/.Ref"  //Ref

    contract Retbank {

    uint256 public tex;
    uint256 public tvl;   //TVL
    uint32 punlic bp;  //이자 발란싱 기본값 600  Ref어드민이 업그레이드
    mapping(address => my) public myinfo; //어카운트 오너
    address Ret;
    address Ref;

    struct my {
    uint32  depo; //랜덤 박스
    address depot;
    address loan;
    uint256 loant;
    uint256 loankey;
    uint256 chip;
    uint256[]mynft; //대출 받은 nft
    }

    constructor(Ret _ret,Ref _ref)public {
       ret=_ret;
       ref=_ref;
       tvl=500000000 //5억 Ret
    }


    function depoin(uint256 _bet) public {
       require(tvl/100>=_bet);  //TVL의 1/100 예치가능
       require(det.transfer.(address(this),_bet);
        myinfo[msg.sender]depo+=_bet;
        myinfo[msg.sender]depot=now;
        tvl+=_bet;
     }

    function depoout( )public {
      require(myinfo[mag.sender]depo>=1000); //예치금액 검토
      uint256 memory pay=myinfo[msg.sender].depo*(now-myinfo[msg.sender].depot)+bp-30/bp;  //1day변환 코딩필요
      require(det.transfer.(msg.sender,pay));
      my.depo=0;
      my.depot=0;
      }


    function chipup(uint8 _fn,address _user,uint256 _pn,uint256 _mn,uint256 _loan)internal returns(bool){
      require(def.fa[_fn]==msg.sender); //호출자 sc 패밀리 여부 체크
      require(myinfo[_user]depo>=_mn); //마이너스에 대해 잔고가 있는지 체크

      myinfo[_user]chip+=_pn;
      myinfo[_user]chip-=_mn;

      if(myinfo[_user]loan==0){
        myinfo[_user]chip+=_loan;
        myinfo[_user]loan+=_loan;
        myinfo[_user]loant+=_now;
        return true;
      }else{return failse
        }
      }               //론처리는 if문 사용

    function loanclear()public {
      require(myinfo[_user]loan<=myinfo[_user]chip);
      uint256 memory pay=myinfo[msg.sender].loan*(now-myinfo[msg.sender].loant)+550/600;
      myinfo[_user]chip-=myinfo[_user]loan;
      myinfo[_user]loan=0;

    function buychip(uint256 _num)public {
        require(ret.transfer(address(this),_num));
        tvl+=_num;
          myinfo[_user]chip+=_num;

   function chipex(uint256 _num)public {
       require(myinfo[msg.sender]chip>=_num);




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
