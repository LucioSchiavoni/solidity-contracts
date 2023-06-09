// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract maths {

//Suma
    function suma(uint a, uint b) public pure returns (uint){
      return a + b;
    }

   //Resta
    function resta(int a, int b) public pure returns (int){
        return a-b;
    }
    
//Multiplicacion
    function multiplicacion(uint a, uint b) public pure returns (uint){
        return a*b;
    }

    //Exponenciacion
    function expon(uint a, uint b) public pure returns (uint){
        return a**b;
    }

    //Modulo
    function mod(uint a, uint b) public pure returns (uint){
        return a%b;
    }

    // (x+y)%k

    function _addmod(uint x, uint y, uint k) public pure returns (uint, uint){
        return (addmod(x,y,k), (x+y)%k);
    }

    // (x+y)%k

    function _mulmod(uint x, uint y, uint k) public pure returns (uint, uint){
        return (mulmod(x,y,k), (x*y)%k);
    }
    
}