// SPDX-License-Identifier: MIT

pragma solidity ^0.8.25;

import {Test, console} from "forge-std/Test.sol";
import {FundMe} from "../src/FundMe.sol";

contract FundMeTest is Test {
    FundMe public fundMe;

    address public constant USER = address(1);

    function setUp() external {
        fundMe = new FundMe(USER);
    }

    function testMinDollor() public view {
        assertEq(fundMe.MINIMUM_USD(), 5 * 10 ** 18);
    }
}
