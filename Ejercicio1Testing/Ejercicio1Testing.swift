//
//  Ejercicio1Testing.swift
//  Ejercicio1Testing
//
//  Created by User-UAM on 10/19/24.
//

import XCTest

class Ejercicio1Testing: XCTestCase {
    
    var calculoPotencia: CalculoPotencia!
    
    override func setUp() {
        super.setUp()
        //Inicializamos al clase antes de cada prueba.
        calculoPotencia = CalculoPotencia()
    }
    
    override func tearDown() {
        //Limpia recursos despues de cada prueba.
        calculoPotencia = nil
        super.tearDown()
    }
    
    //Test1: validar la potencia de un numero.
    func testCalcularPotencia() {
        let resultado = calculoPotencia.calcularPotencia(base: 2, exponente: 3)
        XCTAssertEqual(resultado, 8.0, "2 elevado a la 3 deberia ser 8")
    }
    
    //Test2: validar que cualquier numero elevado a la 0 es 1.
    func testPotenciaCeroEsUno() {
        let resultado = calculoPotencia.calcularPotencia(base: 5, exponente: 0)
        XCTAssertEqual(resultado, 1.0, "Cualquier numero elevado a la 0 deberia ser 1")
    }
    
    //Test3: validar la potencia con base negativa.
    func testBaseNeg() {
        let resultado = calculoPotencia.calcularPotencia(base: -2, exponente: 3)
        XCTAssertEqual(resultado, -8.0, "-2 elevado a la 3 deberia ser -8")
    }
    
}
