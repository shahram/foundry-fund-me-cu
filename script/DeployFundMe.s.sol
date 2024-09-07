// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;
import {FundMe} from "../src/FundMe.sol";
import {Script} from "forge-std/Script.sol";
import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";
import {HelperConfig} from "./HelperConfig.s.sol";

contract DeployFundMe is Script {
    AggregatorV3Interface priceFeed;

    HelperConfig helperConfig = new HelperConfig();
    address ethUsdPriceFeed = helperConfig.activeNetworkConfig();

    function run() external returns (FundMe) {
        vm.startBroadcast();
        FundMe fundMe = new FundMe(ethUsdPriceFeed);
        vm.stopBroadcast();
        return fundMe;
    }
}
