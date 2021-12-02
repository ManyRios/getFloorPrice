// SPDX-License-Identifier: Apache-2.0

/******************************************************************************
 * Copyright 2021 IEXEC BLOCKCHAIN TECH                                       *
 *                                                                            *
 * Licensed under the Apache License, Version 2.0 (the "License");            *
 * you may not use this file except in compliance with the License.           *
 * You may obtain a copy of the License at                                    *
 *                                                                            *
 *     http://www.apache.org/licenses/LICENSE-2.0                             *
 *                                                                            *
 * Unless required by applicable law or agreed to in writing, software        *
 * distributed under the License is distributed on an "AS IS" BASIS,          *
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.   *
 * See the License for the specific language governing permissions and        *
 * limitations under the License.                                             *
 ******************************************************************************/

pragma solidity ^0.8.0;

import "./Oracle.sol";
import "hardhat/console.sol";

contract GetFloorPrice {
    int256 public floorPrice;
    uint256 public date;
 
    function getOracleData() public  returns (int256){
        bytes32 oracleId = 0x9219f36c68592660e43418eccdaac640df369f388b245da5fe69bbe2d3cda98d;
        address oracleAddress = 0x8ecEDdd1377E52d23A46E2bd3dF0aFE35B526D5F; //generic contract Oracle
        Oracle oracleContract = Oracle(oracleAddress);
        (int256 value, uint256 _date) = oracleContract.getInt(oracleId);
        floorPrice = value;
        date = _date;
        return value;
    }

    function getFloorPrice() public view returns (int256) {
        return floorPrice;
    }

}
