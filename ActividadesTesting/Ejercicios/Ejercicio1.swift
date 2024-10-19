//
//  Ejercicio1.swift
//  ActividadesTesting
//
//  Created by User-UAM on 10/19/24.
//

import Foundation
/*
1. Clase para calcular la potencia de un número
 Crea una clase que contenga una función para calcular la potencia de un número dado, donde la
 base y el exponente se pasen como parámetros. Realiza las pruebas unitarias correspondientes
 para validar el resultado.
 1. Crea la prueba unitaria para validar la potencia de un número
 2. Crea la prueba unitaria para validar que un número a la potencia 0 es igual a 1

 */

class CalculoPotencia {
    func calcularPotencia(base: Double, exponente: Int) -> Double {
        return pow(base, Double(exponente))
    }
}
