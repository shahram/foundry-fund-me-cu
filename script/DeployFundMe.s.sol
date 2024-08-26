// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {FundMe} from "../src/FundMe.sol";
import {Script} from "forge-std/Script.sol";

contract DeployFundMe is Script {
    FundMe fundMe;

    function run() public {
        vm.startBroadcast();
        fundMe = new FundMe();
        vm.stopBroadcast();
    }
}
