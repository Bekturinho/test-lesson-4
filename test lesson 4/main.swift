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


//1) Написать функцию, которая принимает строку String и возвращает ту же самую строку, но "перевернутую". Например, если я вызову функцию и в качоку ия тевир передам
//
//func reversingFunction(text: String) -> String{
//    var text2 = Array(text).map({$0})
//    var totalArray = [Character]()
//    var total = ""
//    for i in text2{
//        totalArray.append(text2.last!)
//        text2.removeLast()
//    }
//    for j in totalArray{
//        total += String(j)
//    }
//    print(total)
//    return total
//}
//
//
//reversingFunction(text: "hello Swift!")
/*
 Определить протокол с нужными свойствами и методами для App Store,
 такие как: addApp), removeApp0, apps, getAppsByTypel, getSortedApps0
 приватный метод validateApp0.
 AppStore - класс, подписанный на твой протокол. Тебе понадобится структура Арр с данными о приложении. К ней тоже создать протокол, в котором будут все необходимые свойства и методы для приложения, такие как: название приложения, страна, где приложение разрабатывалось, имя разработчика/кампании-разработчика, вес приложения (Double), тип приложения (enum AppType). Одно из свойств
 должно быть опциональным.
 Соответственно, создать АрТуре с типами приложения, что есть в реальном
 AppStore (3-4 типа будет достаточно). Метод addApp должен добавлять в массив из приложений новое
 приложение, если оно валидно. Для этого используй метод validateApp0.
 Арине лидно - выводить в консоль "Rejected to add an app (app. name) to Метод validateApp0 должен возвращать Bool, если приложение валидно -
 true, если нет - false.
 Критерии валидности:
 Приложение весит больше 20 и меньше 3000 МБ.
 Страна разработчика не КНДР и Россия.
 
 **/

protocol AppStoreProtocol{
    func addApp(totalAppsArray: [App])
    func removeApp()
    func getAppsByTypel(appsArray: [App], type: AppType)
    func getSortedApps()

   
    
}
enum AppType{
    case delivery
    case sport
    case videoMaking
    case music
}
protocol AppProtocol{
    var name: String { get set }
    var country: String { get set }
    var company: String { get set }
    var memory: Double { get set }
    var type: AppType { get set }
}
struct App: AppProtocol{
    var name: String
    
    var country: String
    
    var company: String
    
    var memory: Double
    
    var type: AppType
    
   
    
}

class AppStore: AppStoreProtocol{
 
    
    func getAppsByTypel(appsArray: [App], type: AppType) {
        appsArray.filter({ a in
            if a.type == type{
                print("App \(a.name) is \(a.type) type")
                return true
                
            }
            else{
                return false
            }
    
        })
        
      
    }
    var totalArray: [App?]
    
   
    
    
    func addApp(totalAppsArray: [App]) {
        for i in totalAppsArray{
            validateApp()
        }
    
    }
    
    func removeApp() {
        print("b")
    }

    private var apps: App
   
    
    func getSortedApps() {
        print("b")
    }
    
    private func validateApp() -> Bool{
    
        
        if apps.memory < 20{
            print("Rejected to add an app \(apps.name) to AppStore")
            return false
        }
        if apps.memory > 3000{
            print("Rejected to add an app \(apps.name) to AppStore")
            return false
            
        }
        if apps.country == "Russia"{
            return false
            
        }
        if apps.country == "KNDR"{
            print("Rejected to add an app \(apps.name) to AppStore")
            return false
        }
        else{
            totalArray.append(apps)
            return true
print(totalArray)
        }
    
        return true
    }
    init(totalArray: [App?], apps: App) {
        self.totalArray = totalArray
        self.apps = apps
    }
}
var shazamINFO = App(name: "Shazam", country: "KNDR", company: "Apple", memory: 33, type: .delivery)
var shazamINFO2 = App(name: "Shazam", country: "USA", company: "Apple", memory: 33, type: .delivery)
var shazamINFO3 = App(name: "Shazam", country: "Ukraine", company: "Apple", memory: 33, type: .delivery)

var shazam = AppStore(totalArray: [], apps: shazamINFO)

shazam.addApp(totalAppsArray: [shazamINFO3])


