//
//  Ejercicio4Testing.swift
//  Ejercicio4Testing
//
//  Created by User-UAM on 10/19/24.
//

import XCTest

class Ejercicio4Testing: XCTestCase {

    var Validador: ValidarPalindromo!
    
    override func setUp() {
        super.setUp()
        Validador = ValidarPalindromo()
    }
    
    override func tearDown() {
        Validador = nil
        super.tearDown()
    }
    
    //test1: Validamos que las palabras sean palindromos.
    func testPalabrasPalindromos() {
        XCTAssertTrue(Validador.esPalindromo(cadena: "Reconocer"), "Reconocer deberia ser una palabra palindromo")
        XCTAssertTrue(Validador.esPalindromo(cadena: "radar"), "radar deberia ser una palabra palindromo")
        XCTAssertTrue(Validador.esPalindromo(cadena: "solos"), "solos deberia ser una palabra palindromo")
    }
    
    //Test2: Validamos que las frases sean palindrimos.
    func testFrasesPalindromos() {
        XCTAssertTrue(Validador.esPalindromo(cadena: "Anita lava la tina"), "Anita lava la tina deberia ser un palindromo")
        XCTAssertTrue(Validador.esPalindromo(cadena: "Roma ni se conoce sin oro, ni se conoce sin amor"), "Roma ni se conoce sin oro, ni se conoce sin amor deberia ser un palindromo")
    }
    
    //Test3: Validamos que una cadena que no es palinromo se detecta correctamente.
    func testNoEsPalindromo() {
        XCTAssertFalse(Validador.esPalindromo(cadena: "Hola mundo"), "Hola mundo deberia ser un palindromo")
    }
    
    //Test4: Validamos que una cadena vacia es considerada palindromo.
    func testCadenaVacia() {
        XCTAssertTrue(Validador.esPalindromo(cadena: ""), "Una cdena vacia deberia ser un palindromo")
    }
    
    //Test5: Validamos que una frase con signos de puntuacion.
    func testFraseConPuntuacion() {
        XCTAssertTrue(Validador.esPalindromo(cadena: "¿Acaso hubo buhos aca?"), "¿Acaso hubo buhos aca? deberia ser un palindromo")
    }

}
