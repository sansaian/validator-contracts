//! Copyright 2018 C4Coin
//!
//! Licensed under the Apache License, Version 2.0 (the "License");
//! you may not use this file except in compliance with the License.
//! You may obtain a copy of the License at
//!
//!     http://www.apache.org/licenses/LICENSE-2.0
//!
//! Unless required by applicable law or agreed to in writing, software
//! distributed under the License is distributed on an "AS IS" BASIS,
//! WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//! See the License for the specific language governing permissions and
//! limitations under the License.
//!
//! Original code taken from https://github.com/paritytech/contracts

pragma solidity ^0.4.23;


contract Owned {
    modifier only_owner { require(msg.sender == owner); _; }

    event NewOwner(address indexed old, address indexed current);

    function setOwner(address _new) public only_owner { emit NewOwner(owner, _new); owner = _new; }

    address public owner = msg.sender;
}
