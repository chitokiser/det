// SPDX-License-Identifier: chito
pragma solidity >=0.7.0 <0.9.0;

contract Def{
address public admin;
mapping(uint => address)public fa;
mapping (address =>bool) public step;
mapping (uint8 => uint256) public hs;  //상장 nft 토큰 번호 인덱스=uint8 상장번호=uint256
mapping (uint8=>string)public img;
uint8 public bp=10;

constructor (){
admin=msg.sender;
}

function stepup(address _nstep) public {
  require(admin==msg.sender);
  step[_nstep]=true;
  }

function faup(uint8 _num,address _addr)public {
  require(step[msg.sender]=true||admin==msg.sender);
  fa[_num]=_addr;
}

function bpup(uint8 _num)public {
  require(step[msg.sender]=true||admin==msg.sender);
  bp=_num;
}

function hsup(uint8 _num,uint256 _tid)public{
  require(step[msg.sender]=true||admin==msg.sender);
 hs[_num]=_tid;
}

function imgup(uint8 _num,string memory _imgaddr)public{
  require(step[msg.sender]=true||admin==msg.sender);
  img[_num]=_imgaddr;
 }
}
