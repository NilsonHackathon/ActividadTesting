//
//  Ejercicio4.swift
//  ActividadesTesting
//
//  Created by User-UAM on 10/19/24.
//

import Foundation
/*
 4. Clase para validar si una cadena de texto es un palíndromo
 Crea una clase que contenga una función que determine si una cadena de texto es un
 palíndromo. Un palíndromo es una palabra o frase que se lee igual de izquierda a derecha que
 de derecha a izquierda, ignorando espacios y signos de puntuación. La función debe ser
 insensible a mayúsculas y minúsculas. Realiza las pruebas unitarias correspondientes para
 verificar el resultado.
 1. Crea la prueba unitaria para evaluar si una palabra es un palíndromo.
 a. Reconocer, anilina, radar
 2. Crea la prueba unitaria para evaluar si una frase es un palíndromo.
 a. Anita lava la tina
 b. Roma ni se conoce sin oro, ni se conoce sin amor
 */

class ValidarPalindromo {
    func esPalindromo(cadena: String) -> Bool {
        let caracresValidos = cadena.lowercased().filter { $0.isLetter }
        return caracresValidos == String(caracresValidos.reversed())
    }
}
