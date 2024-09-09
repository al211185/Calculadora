//
//  InterfazBotones.swift
//  Calculadora
//
//  Created by alumno on 9/6/24.
//

import Foundation

//interfaz usuario [Nombre de la clase o estructura]
struct IUBotonCalculadora{
    var restorationID: String
    var numero: Character
    var operacion: String
    
    init(_ id: String, numero: Character, operacion: String) {
        self.restorationID = id
        self.numero = numero
        self.operacion = operacion
    }
    static func crear_arreglo_botones()-> Dictionary<String, IUBotonCalculadora>{
        var botones_interfaz: Dictionary<String, IUBotonCalculadora> = [:]

        botones_interfaz["boton_0"]=IUBotonCalculadora(
            "boton_0",
            numero: Character("0"),
            operacion: ""
        )
        botones_interfaz["boton_1"]=IUBotonCalculadora(
            "boton_1",
            numero: Character("1"),
            operacion: ""
        )
        botones_interfaz["boton_2"]=IUBotonCalculadora(
            "boton_2",
            numero: Character("2"),
            operacion: ""
        )
        botones_interfaz["boton_3"]=IUBotonCalculadora(
            "boton_3",
            numero: Character("3"),
            operacion: ""
        )
        botones_interfaz["boton_4"]=IUBotonCalculadora(
            "boton_4",
            numero: Character("4"),
            operacion: ""
        )
        botones_interfaz["boton_5"]=IUBotonCalculadora(
            "boton_5",
            numero: Character("5"),
            operacion: ""
        )
        botones_interfaz["boton_6"]=IUBotonCalculadora(
            "boton_6",
            numero: Character("6"),
            operacion: ""
        )
        botones_interfaz["boton_7"]=IUBotonCalculadora(
            "boton_7",
            numero: Character("7"),
            operacion: ""
        )
        botones_interfaz["boton_8"]=IUBotonCalculadora(
            "boton_8",
            numero: Character("8"),
            operacion: ""
        )
        botones_interfaz["boton_9"]=IUBotonCalculadora(
            "boton_9",
            numero: Character("9"),
            operacion: ""
        )
        botones_interfaz["boton_punto"]=IUBotonCalculadora(
            "boton_punto",
            numero: Character("."),
            operacion: ""
        )
        botones_interfaz["boton_igual"]=IUBotonCalculadora(
            "boton_igual",
            numero: Character("="),
            operacion: "="
        )
        botones_interfaz["boton_suma"]=IUBotonCalculadora(
            "boton_suma",
            numero: Character("+"),
            operacion: "+"
        )
        botones_interfaz["boton_resta"]=IUBotonCalculadora(
            "boton_resta",
            numero: Character("-"),
            operacion: "-"
        )
        botones_interfaz["boton_multiplicacion"]=IUBotonCalculadora(
            "boton_multiplicacion",
            numero: Character("*"),
            operacion: "*"
        )
        botones_interfaz["boton_dividir"]=IUBotonCalculadora(
            "boton_dividir",
            numero: Character("/"),
            operacion: "/"
        )
        
        return botones_interfaz
    }
}
