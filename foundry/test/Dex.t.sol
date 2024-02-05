// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// import "forge-std/Test.sol";
// import {Dex} from "../src/Dex.sol";
// import {MockERC20} from "../src/tokens/MockERC20.sol";


// contract DexTest is Test {
//     Dex public dex;
//     MockERC20 public dai;
//     MockERC20 public usdc;

//     address public owner;

//     function setUp() public {
//         owner = address(this);
//         // Deploy Mock ERC20 Tokens
//         dai = new MockERC20("DAI Token", "DAI", 18);
//         usdc = new MockERC20("USDC Token", "USDC", 6);

//         // Deploy Dex contract with addresses of the deployed tokens
//         dex = new Dex(address(dai), address(usdc));
//     }

//     function testDepositUSDC() public {
//         uint256 amount = 1e6; // 1 USDC in terms of its smallest unit
//         usdc.mint(address(this), amount); // Mint USDC to this contract (test contract)
//         usdc.approve(address(dex), amount); // Approve Dex to spend USDC
//         dex.depositUSDC(amount); // Deposit USDC to Dex

//         assertEq(dex.usdcBalances(address(this)), amount, "USDC balance should match deposited amount");
//     }

//     function testBuyAndSellDAI() public {
//         // Assuming you've already tested deposit functions separately
//         uint256 usdcAmount = 1e6; // 1 USDC
//         usdc.mint(address(this), usdcAmount);
//         usdc.approve(address(dex), usdcAmount);
//         dex.depositUSDC(usdcAmount);

//         dex.buyDAI(); // Buy DAI with all USDC balance

//         // Validate DAI balance change, omitted for brevity


//         // Sell DAI back to USDC, similar steps as buying, omitted for brevity
//     }

//     function testWithdraw() public {
//         // Similar setup as deposit, but this time call withdraw and validate balances
//     }
// }
