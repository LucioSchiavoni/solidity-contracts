pragma solidity ^0.8.4;

contract Food{
    


   struct dinnerPlate{

       string name;
       string ingredients;

   }


   dinnerPlate [] menu;


function newMenu(string memory _name, string memory _ingredients) internal {
    menu.push(dinnerPlate(_name, _ingredients));
   }
}


contract Hamburguer is Food{

    address public owner;

    constructor(){
        owner = msg.sender;

    }

    
}