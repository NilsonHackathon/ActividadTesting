//
//  Ejercicio3.swift
//  ActividadesTesting
//
//  Created by User-UAM on 10/19/24.
//

import Foundation
/*
 3. Clase para verificar si un número es par o impar
 Crea una clase con una función que determine si un número es par o impar. Realiza las pruebas
 unitarias correspondientes para verificar el resultado.
 1. Crea la prueba unitaria para validar el caso de un número par.
 2. Crea la prueba unitaria para validar el caso de un número impar.
 */

class verificadorNumeroPar {
    func par(numero: Int) -> Bool {
        return numero % 2 == 0
    }
}
