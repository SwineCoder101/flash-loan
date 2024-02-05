// SPDX-License-Identifier: MIT
pragma solidity 0.8.10;

import {Script} from "forge-std/Script.sol";
import {FlashLoan} from "../src/FlashLoan.sol";
import {IERC20} from "../lib/aave-v3-core/contracts/dependencies/openzeppelin/contracts/IERC20.sol";

contract DeployFlashLoan is Script{
    address payable owner;
    IERC20 private dai;

    function run() external {
        vm.startBroadcast(); 
        FlashLoan flashLoan = new FlashLoan(vm.envAddress("ADDRESS_PROVIDER"));

        dai = IERC20(vm.envAddress("DAI_ADDRESS"));
        dai.approve(address(flashLoan), 1000000000);
        // dai.mint(address(this), 1000000000);

        flashLoan.requestFlashLoan(vm.envAddress("DAI_ADDRESS"), 1000000000);
        vm.stopBroadcast();
    }

    function transferDAI() external {

    }
}