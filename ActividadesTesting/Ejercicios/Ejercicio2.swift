//
//  Ejercicio2.swift
//  ActividadesTesting
//
//  Created by User-UAM on 10/19/24.
//

import Foundation
/*
 2. Clase para calcular el área de un triángulo
 Crea una clase que calcule el área de un triángulo dado su base y altura. Realiza las pruebas
 unitarias para validar el resultado.
 1. Crea la prueba unitaria para validar el resultado del cálculo del área de un triángulo
*/

class AreaTriangular {
    func calcularArea(base: Double, altura: Double) -> Double {
        return (base * altura) / 2
    }
}
