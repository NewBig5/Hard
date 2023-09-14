// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.18;

// Uncomment this line to use console.log
// import "hardhat/console.sol";

contract T2 {

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
        uint[] storage groups2 = groups;
        groups2.push(10);
        groups2.push(30);
        groups2.push(15);
        groups2.push(40);
        groups2.push(20);
        cleanExpiredGroup();
    }
}
