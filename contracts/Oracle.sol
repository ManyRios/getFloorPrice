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

abstract contract Oracle {
    
    function getRaw(bytes32)
        public
        view
        virtual
        returns (bytes memory, uint256);

    function getString(bytes32)
        public
        view
        virtual
        returns (string memory, uint256);

    function getInt(bytes32) 
        public 
        view 
        virtual 
        returns (int256, uint256);

    function getBool(bytes32) 
        public 
        view 
        virtual 
        returns (bool, uint256);

}