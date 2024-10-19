//
//  Ejercicio5.swift
//  ActividadesTesting
//
//  Created by User-UAM on 10/19/24.
//

import Foundation
/*
 5. Clase para contar vocales en una cadena
 Crea una clase que contenga una función para contar el número de vocales en una cadena de
 texto. Realiza las pruebas unitarias correspondientes para verificar el resultado.
 1. Crea la prueba unitaria para validar la cantidad de vocales en un texto
 a. “hola mundo” = 4 vocales
 2. Crea la prueba unitaria para validar que la cantidad de vocales en un texto es 0.
 a. Use una cadena de texto aleatoria, sin sentido para validar este caso, ejemplo:
 “bcdfghjkl” = 0 vocales
 */
class ContadorVocales {
    func contarVocales(cadena: String) -> Int {
        let vocales = "aeiouAEIOU"
        return cadena.filter {vocales.contains($0)}.count
    }
}
