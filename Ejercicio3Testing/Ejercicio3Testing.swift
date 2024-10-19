//
//  Ejercicio3Testing.swift
//  Ejercicio3Testing
//
//  Created by User-UAM on 10/19/24.
//

import XCTest

class Ejercicio3Testing: XCTestCase {
    
    var verificador: verificadorNumeroPar!
    
    override func setUp() {
        super.setUp()
        verificador = verificadorNumeroPar()
    }
    
    override func tearDown() {
        verificador = nil
        super.tearDown()
    }
    
    //Testing 1: Validamos que el numero es par.
    func testNumeroPar() {
        let resultado = verificador.par(numero: 4)
        XCTAssertTrue(resultado, "4 deberia ser un numero par")
    }
    
    //Testing 2: validamos que el numero es impar.
    func testNumeroImpar() {
        let resultado = verificador.par(numero: 7)
        XCTAssertFalse(resultado, "7 deberia ser un numero impar")
    }
    
    //Testing 3: Validamos en dado caso sea 0
    func testCero() {
        let resultado = verificador.par(numero: 0)
        XCTAssertTrue(resultado, "0 deberia considerarse un numero par")
    }
    
    //Testing 4: Validamos en dado caso sea numero par negativo.
    func testNegativoPar() {
        let resultado = verificador.par(numero: -6)
        XCTAssertTrue(resultado, "-6 deberia considerarse un numero par")
    }
    
    //Testing 5: Validamos en dado caso sea numero impar negativo.
    func testNegativoImpar() {
        let resultado = verificador.par(numero: -3)
        XCTAssertFalse(resultado, "-3 deberia considerarse un numero imapr")
    }
}
