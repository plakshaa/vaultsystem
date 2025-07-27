// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

library SafeMathLib {
    function add(uint a, uint b) internal pure returns (uint) {
        unchecked {
            uint c = a + b;
            require(c >= a, "Addition overflow");
            return c;
        }
    }

    function sub(uint a, uint b) internal pure returns (uint) {
        require(b <= a, "Subtraction underflow");
        return a - b;
    }
}
