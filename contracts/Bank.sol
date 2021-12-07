// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Bank {

  //계좌 소유주
  address payable public owner;

  constructor(address payable _owner) public {
    owner = _owner;
  }
  
  function deposit() public payable {
    require(msg.value > 0);
  }

  function withdraw() public {
    require(msg.sender == owner);
    owner.transfer(address(this).balance);
  }
}
