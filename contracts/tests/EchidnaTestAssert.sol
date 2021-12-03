/*
 * SPDX-License-Identifier:    MIT
 */

pragma solidity ^0.8.0;
import "./TestAssert.sol";

contract EchidnaTestAssert {
  TestAssert ta;
  event AssertionFailed(string message);
  constructor() public {
    ta = new TestAssert();
  }

  function set0(int val) public returns (bool){
    assert(val % 100 != 0);
  }

  function internal_func(uint val) internal {
    if(val > 128)
      emit AssertionFailed("error");
  }

  function set1(uint val) public {}

  function f() public {
    emit AssertionFailed("error");
    revert();
  }

  function internal_assert(uint val) public returns (bool){
    internal_func(val);
  }

  function external_assert(uint val) public returns (bool){
    ta.fail(val);
  }

}

