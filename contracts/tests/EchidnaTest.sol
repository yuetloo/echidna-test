/*
 * SPDX-License-Identifier:    MIT
 */

pragma solidity ^0.8.0;
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts/proxy/utils/UUPSUpgradeable.sol";

/// @title Fuzzer test for Registry contract
/// @notice Test the Registry contract functionalities.
contract EchidnaTest is UUPSUpgradeable, Initializable {

    /// @notice Registers a DAO by his name
    function echidna_test() external pure returns (bool) {
        return true;
    }

    function _authorizeUpgrade(address) internal view override {
        require(msg.sender != address(0), "Only executor can call this!");
    }

}
