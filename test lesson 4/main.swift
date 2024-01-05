import Foundation

//Создать цикл в диапазоне от 0 до 1000. Когда число в цикле достигнет 500 - вывести в консоль "Stop!" и остановить ЦИКЛ

//for i in 0...1000{
//    while i == 500{
//        print("\(i) Stop!")
//        break
//    }
//   
//}

/**
 Создать функцию, которая принимает три строки String и возвращает число Int. Вернуть сумму из преобразованных в строки числа. Если невозможно преобразовать строку в число (Int(text) == nil) - вывести в консоль " (непреобразованная СтрокаВЧисло) не является числом" и вернуть 0. Вызвать функцию два раза: в первый раз пусть параметры функции будут все три числа в виде строк, а во второй пусть минимум один из параметров будет невозможно превратить в число.

 */


//func transform(_ text: String, text2: String, text3: String){
//    var summaryText = [[text], [text2], [text3]]
//    var totalText = summaryText.flatMap({$0})
//    var total = totalText.compactMap({
//        if Int($0) != nil{
//           print(Int($0)!)
//            
//        }else{
//            print( $0 + "(непреобразованная СтрокаВЧисло) не является числом")
//        }
//    })
//}
//transform("beka", text2: "kot", text3: "Loh")
//transform("123", text2: "3232", text3: "323")


/**
 ﻿﻿Создать класс Калькулятор, который содержит приватное свойство latestResult с методами:
 ﻿﻿﻿plus(a: Int, b: Int) -> Int
 ﻿﻿﻿minus(a: Int, b: Int) -> Int
 ﻿﻿﻿multiply(a: Int, b: Int) -> Int
 ﻿﻿﻿dividea: Int, b: Int) -> Int
 ﻿﻿﻿getLatestResult → Int
 Метод getLatestResult0 должен возвращать последний сохраненный результат вычислений калькулятора. Как это сделать? У тебя есть свойство latestResult ;)
 */

//class Calculator{
//    enum Methods{
//        case plus
//        case minus
//        case multiply
//        case divide
//    }
//    
//    
//   private func latestResult(a: Int, b: Int, methods: Methods) -> Int{
//        var totalResult = 0
//        switch methods{
//        case .plus:
//            totalResult += a + b
//            
//                
//        case .minus:
//            totalResult += a - b
//           
//               
//        case .multiply:
//            totalResult += a * b
//           
//               
//        case .divide:
//            totalResult += a / b
//            
//                
//        }
//        
//        print(totalResult)
//        return totalResult
//
//    }
//   
//    func getLatestResult(num: Int, num2: Int, mainMethod: Methods){
//        latestResult(a: num, b: num2, methods: mainMethod)
//    }
//}
//var calc = Calculator()
//calc.getLatestResult(num: 32, num2: 4, mainMethod: .plus)

var a = "привет"
var b = a.reversed()
print(b)
