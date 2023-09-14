// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.18;

// Uncomment this line to use console.log
// import "hardhat/console.sol";

contract Test {

    uint count;
    struct Metric {
        uint a;
        uint b;
        uint c;
        uint d;
    }
    Metric m;
    function getA() public view returns (uint) {
        return m.a;
    }
    function test() public {
        Metric  storage t1 = m;
        m.a = 100+t1.b;

        count++;
    }
}
