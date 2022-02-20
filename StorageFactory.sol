//SPDX-License-Identifier:MIT

pragma solidity ^0.6.0;
import "./Practice.sol";

contract StorageFactory{

    MyContract[] public simpleStorageArray;
    
    function storeArray() public {
        MyContract simpleStorage= new MyContract();
        simpleStorageArray.push(simpleStorage);
    }

    function sfSet(uint256 index, int favNum) public {

        MyContract simpStor= MyContract(address(simpleStorageArray[index]));
        simpStor.set(favNum);
    }

    function sfGet(uint256 index) public view returns(int){
        MyContract simppStorr= MyContract(address(simpleStorageArray[index]));
        return simppStorr.get();
    }
}
