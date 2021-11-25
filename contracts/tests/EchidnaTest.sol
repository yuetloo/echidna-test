/*
 * SPDX-License-Identifier:    MIT
 */

pragma solidity ^0.8.0;
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts/proxy/utils/UUPSUpgradeable.sol";

contract EchidnaTest is UUPSUpgradeable, Initializable {
    function doOtherStuff() external pure returns (uint8) {
        return 9;
    }

    function echidna_test() external pure returns (bool) {
        return true;
    }

    function _authorizeUpgrade(address) internal view override {
        require(msg.sender != address(0));
    }

}
