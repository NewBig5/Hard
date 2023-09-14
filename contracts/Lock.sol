// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.18;

// Uncomment this line to use console.log
// import "hardhat/console.sol";

contract Test {

    uint[] public groups;

    function cleanExpiredGroup() public {
        for(uint i=groups.length; i>0; i--) {
            if(groups[i-1] > 25){
                if(i < groups.length){
                    groups[i-1]= groups[groups.length-1];
                }
                groups.pop();
            } 
        }
    }   

    function getLength() public view returns(uint len) {
        return groups.length;
    }
    function test() public {
        groups.push(10);
        groups.push(30);
        groups.push(15);
        groups.push(40);
        groups.push(20);
        cleanExpiredGroup();
    }
}
