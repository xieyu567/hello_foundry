// SPDX-License-Identifier: MIT

pragma solidity ^0.8.25;

import {Script} from "forge-std/Script.sol";
import {FundMe} from "../src/FundMe.sol";

contract DeployFundMe is Script {
    address public constant USER = address(1);

    function run() external returns (FundMe) {
        vm.startBroadcast();
        FundMe fundMe = new FundMe(USER);
        vm.stopBroadcast();
        return (fundMe);
    }
}
