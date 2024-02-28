// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Contrato MeuContrato
contract MeuContrato {
    // Idade padrão de 18 anos
    uint public idade = 18;

    // Endereço do dono do contrato
    address public dono;

    // Construtor define o dono como o criador do contrato
    constructor() {
        dono = msg.sender;
    }

    // Define a 'idade'; somente o dono pode alterar
    function setIdade(uint novaIdade) public {
        require(msg.sender == dono, "Apenas o dono pode modificar.");
        idade = novaIdade;
    }

    // Retorna a 'idade'
    function getIdade() public view returns (uint) {
        return idade;
    }
}
