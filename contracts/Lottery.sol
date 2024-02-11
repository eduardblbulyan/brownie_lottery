// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "@chainlink/contracts/src/v0.6/interfaces/AggregatorV3Interface.sol";


contract Lottery {

    address payable[] public players;
    uint256 public usdEntryFee;
    AggregatorV3Interface internal ethUsdPriceFeed;


    constructor(address _priceFeedAddress) public {
        usdEntryFee = 50 * (10**18); // because in Wei, convert to Eth;
        ethUsdPriceFeed = AggregatorV3Interface(_priceFeedAddress);
    }

    function enter() public payable {
        // 50$ minimum
        players.push(msg.sender);
    }
    function get_entrance_fee() public view returns(uint256){
        
    }
    function start_lotter() public {}
    function end_lotter() public {}   
}