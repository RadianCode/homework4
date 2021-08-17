//
//  main.swift
//  Homework4
//
//  Created by Дмитрий Виноградов on 13.08.2021.
//

import Foundation

// 1. Описать класс Car c общими свойствами автомобилей и пустым методом действия по аналогии с прошлым заданием.

class Car {
    var markAuto: String
    var colorAuto: String
    var maxSpeed: Int
    var load: Bool
    var engineStatus: engineStatus
    
    enum engineStatus {
        case on, off
    }
    
    init(markAuto: String, colorAuto: String, maxSpeed: Int, load: Bool, engineStatus: engineStatus) {
        self.markAuto = markAuto
        self.colorAuto = colorAuto
        self.maxSpeed = maxSpeed
        self.load = load
        self.engineStatus = engineStatus
        
    }
    
    func wroomWroom () -> () {
        print(markAuto)
        
    }
    
    func change (engineStatus: engineStatus)  -> () {
        if self.engineStatus == .off {
            print("двигатель выключен")
        } else {
            print("двигатель включен")
        }
        
    }
}

// 2. Описать пару его наследников trunkCar и sportСar. Подумать, какими отличительными свойствами обладают эти автомобили. Описать в каждом наследнике специфичные для него свойства.

var sportCar: Car = Car(markAuto: "mazda", colorAuto: "Black", maxSpeed: 200, load: false, engineStatus: .off)
var trunkCar: Car = Car(markAuto: "Jeep", colorAuto: "White", maxSpeed: 120, load: true, engineStatus: .on)

// 3. Взять из прошлого урока enum с действиями над автомобилем. Подумать, какие особенные действия имеет trunkCar, а какие – sportCar. Добавить эти действия в перечисление.

// 4. В каждом подклассе переопределить метод действия с автомобилем в соответствии с его классом.

class anotherCar: Car {
    
    enum sportCarAction {
        case go
        case stop
    }
    
    enum trunkCarAction {
        case load
        case upload
    }
    
    override func change(engineStatus: engineStatus) -> () {
        if self.engineStatus == .on {
            print("Вы в спорткаре и готовы ехать")
        } else {
            print("Выйди из машины, ты сел в барахло")
        }
        
    }
    
}



// 5. Создать несколько объектов каждого класса. Применить к ним различные действия.

var honda = anotherCar(markAuto: "hond", colorAuto: "Yellow", maxSpeed: 200, load: false, engineStatus: .on)
var icarus = anotherCar(markAuto: "Icarus", colorAuto: "Red", maxSpeed: 100, load: true, engineStatus: .off)
honda.change(engineStatus: .on)
icarus.change(engineStatus: .off)

// 6. Вывести значения свойств экземпляров в консоль.

print(honda)
print(icarus)

// Хотелось бы услшать комментарии по поводу кода, а то складывается впечатление, что все отлично. 
