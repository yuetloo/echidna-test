/*
 * SPDX-License-Identifier:    MIT
 */

pragma solidity ^0.8.0;

contract TestAssert { 
  event AssertionFailed(string message);
  function fail(uint val) public {
    if(val > 128)
      emit AssertionFailed("error");
  }
}
