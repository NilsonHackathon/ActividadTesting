//
//  Ejercicio5Testing.swift
//  Ejercicio5Testing
//
//  Created by User-UAM on 10/19/24.
//

import XCTest

class Ejercicio5Testing: XCTestCase {

    var contador: ContadorVocales!
    
    override func setUp() {
        super.setUp()
        contador = ContadorVocales()
    }
    
    override func tearDown() {
        contador = nil
        super.tearDown()
    }
    
    //Prueba 1: Validamos la cantidad de vocales en "hola mundo".
    func testCantidadVocales() {
        let resultado = contador.contarVocales(cadena: "hola mundo")
        XCTAssertEqual(resultado, 4, "La frase 'hola mundo' debería tener 4 vocales")
    }
    
    //Prueba 2: Validamos que una cadena sin vocales tenga 0 vocales.
    func testCadenadSinSentido() {
        let resultado = contador.contarVocales(cadena: "jskjddhs")
        XCTAssertEqual(resultado, 0, "La cadena 'jskjddhs' debería tener 0 vocales")
    }
    
    //Prueba 3: Validamos la cantidad de vocales con una cadena vacia.
    func testCadenaVacia() {
        let resultado = contador.contarVocales(cadena: "")
        XCTAssertEqual(resultado, 0, "La cadena vacia debería tener 0 vocales")
    }
    
    //Prueba 4: Validamos con una frase que tiene mayusculas y minusculas.
    func testFraseConMayusculaMinuscula() {
        let resultado = contador.contarVocales(cadena: "Hola Mundo")
        XCTAssertEqual(resultado, 4, "La frase 'Hola Mundo' debería tener 4 vocales")
    }
    
    //Prueba 5: Validamos una cadena con solo vocales.
    func testCadenaSoloVocales() {
        let resultado = contador.contarVocales(cadena: "aeiouAEIOU")
        XCTAssertEqual(resultado, 10, "La frase 'aeiouAEIOU' debería tener 10 vocales")
    }
}
