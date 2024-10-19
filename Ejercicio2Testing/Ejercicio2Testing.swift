//
//  Ejercicio2Testing.swift
//  Ejercicio2Testing
//
//  Created by User-UAM on 10/19/24.
//

import XCTest
@testable import ActividadesTesting

class Ejercicio2Testing: XCTestCase {

    var areaTriangular: AreaTriangular!
    
    override func setUp() {
        super.setUp()
        //Inicializa la clase antes de cada prueba.
        areaTriangular = AreaTriangular()
    }
    
    override func tearDown() {
        areaTriangular = nil
        super.tearDown()
    }
    
    //Prueba uno: Validar el calculo del area del triangulo.
    func testCaculoAreaTriangulo() {
        let resultado = areaTriangular.calcularArea(base: 10, altura: 5)
        XCTAssertEqual(resultado, 25.0, "El area de un triangulo con base 10 y altura 5 deberia ser 25")
    }
    
    //Prueba dos: Validar area con base o altura a 0.
    func testAreaCero() {
        let resultado = areaTriangular.calcularArea(base: 0, altura: 10)
        XCTAssertEqual(resultado, 0.0, "Si la base es 0, el area deberia ser 0")
    }
    
    //Prueba tres: Validar area con valores negativos.
        func testAreaConValorNegativos() {
            let resultado = areaTriangular.calcularArea(base: -10, altura: 5)
            XCTAssertEqual(resultado, -25.0, "El area con base negativa deberia ser -25")
            
            let resultadoDos = areaTriangular.calcularArea(base: 10, altura: -5)
            XCTAssertEqual(resultadoDos, -25.0, "El area con altura negativa deberia ser -25")
        }
}
