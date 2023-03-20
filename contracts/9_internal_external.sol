// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Food {
    //Estructura de datos
    struct dinnerPlate {
        string name;
        string ingredients;
    }

    //Array publico que da un GET de los datos ingresados
    dinnerPlate[] public menu;

    //Creacion de un nuevo menu
    function newMenu(string memory _name, string memory _ingredients) internal {
        menu.push(dinnerPlate(_name, _ingredients));
    }
}

contract Hamburguer is Food {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    //Insertar el dato el string y las unidades(uint) llama por herencia al contrato newMenu
    function doHamburguer(string memory _ingredients, uint _uints) external {
        require(_uints <= 5, "No puedes pedir tantas");
        newMenu("Hamburguer", _ingredients);
    }

    //Funcion para dar permiso solo al owner
    modifier onlyOwner() {
        require(owner == msg.sender, "No tienes permisos para esta orden");
        _;
    }

    //Restriccion a la ejecucion (solo el owner)
    function hashPrivateNumber(
        uint _number
    ) public view onlyOwner returns (bytes32) {
        return keccak256(abi.encodePacked(_number));
    }
}
