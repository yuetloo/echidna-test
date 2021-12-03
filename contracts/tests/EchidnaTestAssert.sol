/*
 * SPDX-License-Identifier:    MIT
 */

pragma solidity ^0.8.0;
import "./TestAssert.sol";

contract EchidnaTestAssert {
  TestAssert ta;
  event AssertionFailed(string message);
  constructor() {
    ta = new TestAssert();
  }

  function echidna_test_address() public view returns (bool) {
    return address(ta) != address(0);
  }

}

