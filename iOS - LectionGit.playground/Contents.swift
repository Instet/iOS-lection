import UIKit
import Foundation


// MARK:  Home Work 2.2 - Логические типы. Преобразование типов. Условные конструкции


//// Задача 1. Конструкция If Else
//
//let january = "Январь"
//let february = "Февраль"
//let march = "Март"
//let april = "Апрель"
//let may = "Май"
//let june = "Июнь"
//let july = "Июль"
//let august = "Август"
//let september = "Сентябрь"
//let october = "Октябрь"
//let november = "Ноябрь"
//let december = "Декабрь"
//
//var selectedMonth: String? = april
//
//private func convectorMonth(_ month: String) -> String {
//    if month.lastIndex(where: {$0 == "ь"}) != nil {
//        return month.replacingOccurrences(of: "ь", with: "е").lowercased()
//    } else if month.lastIndex(where: {$0 == "т"}) != nil {
//        return month.appending("е").lowercased()
//    } else {
//        return month.replacingOccurrences(of: "й", with: "е").lowercased()
//    }
//}
//
//if selectedMonth == january {
//    print("В \(convectorMonth(selectedMonth!)) 16 выходных дней")
//} else if selectedMonth == february ||
//            selectedMonth == march ||
//            selectedMonth == may ||
//            selectedMonth == june ||
//            selectedMonth == november {
//    print("В \(convectorMonth(selectedMonth!)) 9 выходных дней")
//
//} else {
//    print("В \(convectorMonth(selectedMonth!)) 8 выходных дней")
//
//}
//
//
//// Задача 2. Конструкция Switch
//switch selectedMonth {
//case january:
//    print("В \(convectorMonth(selectedMonth!)) 16 выходных дней (switch)")
//case february, march, may, june, november:
//    print("В \(convectorMonth(selectedMonth!)) 9 выходных дней (switch)")
//default:
//    print("В \(convectorMonth(selectedMonth!)) 8 выходных дней (switch)")
//}
//
//
//// Задача 3. Тернарный оператор
//
//var isHoliday: Bool = false
//
//let result: String = isHoliday ? "выходной день" : "рабочий день"
//
//print("Это \(result).")
//
//
//// Задача 4. Enum
//
//enum Month {
//    case january,
//         february,
//         march,
//         april,
//         may,
//         june,
//         july,
//         august,
//         september,
//         october,
//         november,
//         december
//
//    var description: String {
//        switch self {
//        case .january: return "январь"
//        case .february: return "февраль"
//        case .march: return "март"
//        case .april: return "апрель"
//        case .may: return "май"
//        case .june: return "июнь"
//        case .july: return "июль"
//        case .august: return "август"
//        case .september: return "сентябрь"
//        case .october: return "октябрь"
//        case .november: return "ноябрь"
//        case .december: return "декабрь"
//        }
//    }
//}
//
//print(Month.december.description)


// MARK:  Home Work 2.4 - Опциональные типы и преобразование

//// Задача 1. Nil-coalescing
//
//var strOne: String? = "Hello"
//var strTwo: String? = "World"
//var strThree: String?
//
//print(strOne ?? "default")
//print(strTwo ?? "default")
//print(strThree ?? "default")
//
//strThree = "Again"
//
//print(strThree ?? "default")
//
//// Задача 2. Optional binding and Forced unwrapping
//
//let one: String = "253"
//let two: String = "14"
//let three: String = "f23"
//let four: String = "121"
//let five: String = "1g2"
//
//var result: Int = 0
//
//if let one = Int(one) {
//    result += one
//    print(result)
//}
//if let two = Int(two) {
//    result += two
//    print(result)
//}
//if let three = Int(three) {
//    result += three
//    print(result)
//}
//if let four = Int(four) {
//    result += four
//    print(result)
//}
//if let five = Int(five) {
//    result += five
//    print(result)
//}
//
//// Задача 3.
//
//var temp: Int? = Int("35h")
//
//if let temp = temp {
//    if temp > 0, temp <= 10 {
//        print("temp is between 0 and 10")
//    } else if temp > 10 {
//        print("temp is greater than 10")
//    } else if temp < 0, temp >= -10 {
//        print("temp is between -10 and 0")
//    } else if temp < -10 {
//        print("temp is less than -10")
//    }
//} else {
//    print("not a data temp (Nil)")
//}
//
//
//// Практика тернарного оператора
//var randomStr: String = "fffffffffffffffffff"
//var newStr = ""
//
//randomStr.enumerated().forEach({$0.offset % 2 == 0 ? newStr.append($0.element.uppercased()) : newStr.append($0.element)})
//print(newStr)
//
//for (index, element) in randomStr.enumerated() {
//    if index % 2 == 0 {
//
//    }
//}



// MARK: Home Work 3.1 - Коллекция: Массив


//// Задача 1.
//
//var namesBoysStudents: [String] = ["Артем Попов", "Виктор Иванов"]
//var namesGirlsStudents: [String] = ["Милана Евсеева", "Татьяна Крягина", "Юлия Рябина"]
//var students: [String] = []
//
//students += namesGirlsStudents
//
//for i in namesBoysStudents {
//    students.insert(i, at: 0)
//}
//
//
//// Задача 2.
//
//students.sort()
//print(students)
//
//
//// Задача 3.
//
//var allFeedback: [Int] = [5, -2, 10, -10, 6, 3, 1, -1]
//allFeedback.sort(by: {$0 > $1})
//var positiveFeedback = allFeedback.filter({$0 > 0})
//print(positiveFeedback)
//
//
//// Задача 4*
//
//var numbersArray = [1, 2, 3, 4, 7, 8, 15]
//var array: [Int] = []
//
//numbersArray.enumerated().forEach({print("Индекc - \($0.offset), Элемент - \($0.element)")})
//
//for element in numbersArray {
//    for number in numbersArray {
//        if element + number == 6, element != number {
//            array.append(element)
//        }
//    }
//}


// MARK: Памятка логический операторов(Комбинирование).

//var a = false
//var b = true
//var c = false
//var d = false
//
//if a && b || c || d {  // (a && b) || c || d - Логические операторы Swift && и || являются лево-ассоциированными
//    print("Ok")
//} else {
//    print("Error")
//}


//// "Voulez-vous un café?" используем LATIN SMALL LETTER E WITH ACUTE
//let eAcuteQuestion = "Voulez-vous un caf\u{E9}?"
//// "Voulez-vous un café?" используем LATIN SMALL LETTER E и COMBINING ACUTE ACCENT
//let combinedEAcuteQuestion = "Voulez-vous un caf\u{65}\u{301}?"
//if eAcuteQuestion == combinedEAcuteQuestion {
//  print("Эти строки считаются равными")
//}
//// Выведет "Эти строки считаются равными"


// MARK: Циклы: While, Repeat-While(запуститься хотя бы 1 раз)


//var num = 6
//
//repeat {
//    print(num)
//} while num > 0
//
//
//var digit = 10001
//var digit2 = 10001
//var temp = 0
//
//while digit != 0 {
//    let mod = digit % 10
//    temp += mod
//
//    digit /= 10
//    if digit != 0 {
//        print(digit)
//        temp *= 10
//    }
//    //print(temp)
//}
//
//if temp == digit2 {
//    print("palindrom")
//}


// MARK: Home Work 3.2 - Словарь. Обход по коллекциям на примере for-in. Кортеж и множество


//// Задача 1.
//
//var dataUser: (film: String, number: Int, food: String) = ("The Lord Of The Rings", 1, "Pizza")
//
//let (film, number, food) = (dataUser.film, dataUser.number, dataUser.food)
//
//var dataPerson: (film: String, number: Int, food: String) = ("Mortal Combat", 5, "Fish")
//
//var dataTemp: (film: String, number: Int, food: String) = dataUser
//
//dataUser = dataPerson
//dataPerson = dataTemp
//
//var numberTuples: (dataUserNum: Int, dataPersonNum: Int, differenceNum: Int) =
//(dataUser.number, dataPerson.number, dataUser.number - dataPerson.number)
//
//
//// Задача 2.
//
//typealias Result = [String : Int]
//var diaryStudents: [String : Result] = ["Вася Пупкин" : ["Математика" : 5, "Русский язык" : 3, "Литература" : 5 ]]
//
//
//// Задача 3.
//
//typealias Chessman = [String: (alpha:Character, num: Int)?]
//
//var chessmans: Chessman = ["White Queen" : ("A",5), "White Pawn" : ("B", 2), "White King" : nil]
//
//var key = "White Pawn"
//
//if let info = chessmans[key] {
//    if let map = info {
//        print("\(key) on coordinates \(map.alpha) - \(map.num)")
//    } else {
//        print("\(key) - Kill!")
//    }
//} else {
//    print("\(key) - Not found!")
//}
//
//
//// Задача 4*.
//
//for figure in chessmans {
//    if let info = figure.value {
//        print("\(figure.key) находится по координатам \(info.alpha) - \(info.num)")
//    } else {
//        print("\(figure.key) - убита")
//    }
//}
//// or
//for (key, value) in chessmans {
//    if let value = value {
//        print(key, value)
//    } else {
//        print(key, "- убита")
//    }
//}


// MARK: Home Work 3.3 - Функции и области видимости.


//// Задача 1.
//
//var books: [String] = []
//
//func addBook(_ books: inout [String], book: String) {
//    books.append(book)
//}
//
//addBook(&books, book: "Первому игроку приготовится")
//addBook(&books, book: "Второму игроку приготовится")
//addBook(&books, book: "Код да Винчи")
//addBook(&books, book: "Библия")
//
//func removeBook(_ books: inout [String], book: String) {
//    if let index = books.firstIndex(of: book) {
//        books.remove(at: index)
//    } else {
//        print("Book not found")
//    }
//}
//
//removeBook(&books, book: "The Castle")
//removeBook(&books, book: "Библия")
//
//
//// Задача 2.
//
//print(userPoints)
//
//func convectorPoints(_ dict: [Int : Double]) -> [Int : Int] {
//    var convectorInMoney: [Int : Int] = [:]
//    for (key, value) in dict {
//        convectorInMoney[key] = Int(value/10)
//    }
//    return convectorInMoney
//}
//
//print(convectorPoints(userPoints))
//
//
//// Задача 3*
//
//print(arrayOfNumbers)
//
//func calculetedEvenAndOddNumbers(_ array: [Int?]) -> (even: Int, odd: Int) {
//
//    var result: (even: Int, odd: Int) = (0, 0)
//    var setNumber: Set<Int?> = Set(array)
//
//    for number in setNumber {
//        if let number = number {
//            if number % 2 == 0 {
//                result.even += number
//            } else {
//                result.odd += number
//            }
//        }
//    }
//
//    return result
//
//}
//
//calculetedEvenAndOddNumbers(arrayOfNumbers)

// MARK: Home Work - Объектно-ориентированное программирование

//// ООП разбивают на независимые блоки(совокупность объектов), каждый обьект является экземпляром определенного типа
//// (класса, протокола)
//
//// Example
//// Объект Яйцо
//class Egg {
//
//    let color: String // Свойства(property)
//    let size: Int
//
//    init(color: String, size: Int) {
//        self.color = color
//        self.size = size
//    }
//
//    func getSize() -> Int {   // Методы
//        return size
//    }
//
//}


///// #Абстракция
//protocol IndastrialMashineProtocol { /// В языке свифт абстракция реализуется протоколами
//
//    func on()
//    func off()
//
//}
//
//
//class CncMashine: IndastrialMashineProtocol { /// Подписываемся на протокол (conform), тем самым реалезуем его методы
//
//    var model: String
//    var powerKWatt: Double
//
//
//    init(model: String, powerKWatt: Double) {
//        self.model = model
//        self.powerKWatt = powerKWatt
//    }
//
//
//    func on() {
//        print("CncMashine start")
//        loadOS()
//        /// #Инкапсуляция- этим мы скрываем внутреннюю реализацию включения(запуска) оборудования, используя контроль доступа запуская в теле метода другой метод загрузки операционной системы,
//    }
//
//    func off() {
//        print("CncMashine stop")
//    }
//
//    private func loadOS() {
//        print("uploadData")
//    }
//}
//
//class TurringCNC: CncMashine {  // Наследование от родительского класса
//
//    override func on() {
//        super.on()
//    }
//
//    override func off() {
//        super.off()
//    }
//}
//
//class MillingCNC: CncMashine {
//
//    override func on() {
//        super.on()
//    }
//
//    override func off() {
//        super.off()
//    }
//}
//
///// #Пример параметрического полиморфизма
//
//var cncMashine: IndastrialMashineProtocol = TurringCNC(model: "Haas ST10", powerKWatt: 3.6)
//
//
/////#Пример Ad Hoc полиморфизма, базируетсяна использование перегрузки методолв или выбора типа нужного обьекта
//
//class Print {
//
//    // Перегрузка
//    func log(_ int: Int) {
//        print("log: \(int)")
//    }
//
//    func log(_ string: String) {
//        print("log: \(string)")
//    }
//
//    func log(_ double: Double) {
//        print("log: \(double)")
//    }
//
//
//}
//
//// Компилятор сам будет понимать какой метод вызвать
//
//var printLogs: Print = Print()
//printLogs.log(1)
//printLogs.log("Hello")



// MARK: Home Work - Объекты в ООП
//
//// Задача 1
//
//protocol FluingProtocol {
//
//    var speedFly: Int { get set }
//    func fly(_ speed: Int)
//
//}
//
//
//protocol EatingProtocol {
//
//    func eat()
//
//}
//
//
//enum Month {
//    case january, february, march, april,
//         may, june, july, august,
//         september, october, november, december
//
//    var month: String  {
//        switch self {
//        case .january:
//            "January"
//        case .february:
//            "February"
//        case .march:
//            "March"
//        case .april:
//            "April"
//        case .may:
//            "May"
//        case .june:
//            "June"
//        case .july:
//            "July"
//        case .august:
//            "August"
//        case .september:
//            "September"
//        case .october:
//            "Oktober"
//        case .november:
//            "November"
//        case .december:
//            "December"
//        }
//    }
//}
//
//
//class Bird: FluingProtocol, EatingProtocol {
//
//    var speedFly: Int
//    var isPredator: Bool
//    var monthOfBirth: String
//
//
//    init(speedFly: Int, isPredator: Bool, monthOfBirth: Month) {
//        self.speedFly = speedFly
//        self.isPredator = isPredator
//        self.monthOfBirth = monthOfBirth.month
//    }
//
//    func fly(_ speed: Int) {
//        print("fly with speed \(speedFly)")
//    }
//
//    func eat() {
//        toGetFood()
//    }
//
//    private func toGetFood() {
//        isPredator ? print("find prey") : print("find a combo food")
//    }
//
//}
//
//struct Planet {
//
//    var diametr: Double
//    var iLife: Bool
//    var distansFromTheStar: Double
//    private var decription: String
//
//    init(diametr: Double, iLife: Bool = false, distansFromTheStar: Double, decription: String) {
//        self.diametr = diametr
//        self.iLife = iLife
//        self.distansFromTheStar = distansFromTheStar
//        self.decription = decription
//
//        about(decription)
//    }
//    func about(_ decription: String) {
//        print(decription)
//    }
//
//}
//
//
//// Задача 2. Enum
//
//
//enum Result<T> {   /// Associated Values
//    case success(T)
//    case failure(String)
//}
//
//func divide(_ divident: Double, by divisor: Double) -> Result<Double> {
//
//    if divisor == 0 {
//        return .failure("Division by zero is not allowed.") /// Делить на ноль нельзя
//    }
//
//    let result = divident/divisor
//
//    return .success(result)
//
//}
//
//var result = divide(12.0, by: 6.0)

//
//enum Week: String {   /// rawValue
//
//    case Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday
//
//}
//
//var week = Week.Monday.rawValue


// MARK: Контроль доступа

/// #open - полный доступ, а так же позволяет наследоваться
/// #public - так же как и open, но не позволяет наследоваться
/// #internal - задается по умолчани, открытый доступ в пределах своего модуля
///
/// Пример:
///
/// framework1 {       // папка1
///
/// class Car { }
///
/// }
///
/// framework2 {      // папка2
///
/// var car = C......  - не будет доступен
///
/// }
///
/// #private(set) - указывается в свойствах  шаблона объектов (class, struct), доступен для чтения,  запрещен для изменения
/// #fileprivate - тот же private - доступ только в файле (.Swift)
/// #private - самый жесткий контроль доступа - ограничевает доступ в не класса или структуры


// MARK: Home Work - ООП: Интерфейс и реализация. Переопределение методов


//// Задача 1.
//
//
//protocol TaxiProtocol {
//
//    var priceOfTheTrip: Double { get }
//
//    var distanceKm: Double { get set }
//
//    func getTaxi(address: String)
//
//}
//
//
//public class Taxi: TaxiProtocol {
//
//    var priceOfTheTrip: Double {
//        Double(priceKm) * distanceKm
//    }
//    var distanceKm: Double
//
//    var priceKm: Int {
//        return 10
//    }
//
//    init(distance: Double) {
//        distanceKm = distance
//        ///  здесь можно использывать геолакацию с расчетом растояния
//    }
//
//
//    func getTaxi(address: String) {
//        getToTheClient(address)
//
//    }
//
//    private func getToTheClient(_ address: String) {
//        print("The driver has accepted the order  and is moving forward to you to the address \(address)")
//    }
//
//}
//
//// Задача 3*
//
//
//class TaxiPobeda: Taxi {
//
//    override var priceKm: Int {
//        return 8
//    }
//
//
//    override func getTaxi(address: String) {
//        super.getTaxi(address: address)
//        openTheDoor()
//
//    }
//    private func openTheDoor() {
//        print(#function)
//    }
//}
//
//class YandexTaxi: Taxi {
//
//}
//
//class CityMobil: Taxi {
//
//
//}
//
//
//var taxi = Taxi(distance: 23)
//taxi.priceKm
//var taxiPobeda = TaxiPobeda(distance: 23)
//taxiPobeda.getTaxi(address: "Moscow street, 16")
//
//
//// Задача 2. Перезагрузка
//
//
//class Speaker {
//
//    func speak() {
//        print("Provide information")
//    }
//
//    func speak(_ int: Int) {
//        print("Provide number \(int)")
//    }
//
//    func speak(_ string: String) {
//        print("Report the word - \(string)")
//    }
//
//    func speak(_ isTrue: Bool) {
//        isTrue ? print("To tell the truth") : print("Report the lie")
//    }
//}
//
//var speaker = Speaker()
//
//speaker.speak()
//speaker.speak(100)
//speaker.speak("Password")
//speaker.speak(false)
//
//withUnsafePointer(to: speaker) { address in
//    print(address)
//}
//
//// Задача 4* Композиция и агрегация (простыми словами)
//
///// Композиция - комната не может существовать без стен
///// Агрегация - мебель в комнате может существавть без комнаты как отдельные обьекты.




// MARK: Home Work 2.1 - Классы и структуры. Перечисления


//protocol Television {
//
//    func toggleTV()
//
//}
//
//enum TVChannel {
//
//    case firstChannel
//    case russia1
//    case russia2
//    case russia24
//    case tnt
//    case rbk
//    case tv3
//    case sts
//    case world
//    case muzTV
//
//    var channel: String {
//        switch self {
//        case .firstChannel:
//            "Первый"
//        case .russia1:
//            "Россия 1"
//        case .russia2:
//            "Россия 2"
//        case .russia24:
//            "Россия 24"
//        case .tnt:
//            "ТНТ"
//        case .rbk:
//            "РБК"
//        case .tv3:
//            "ТВ3"
//        case .sts:
//            "СТС"
//        case .world:
//            "МИР"
//        case .muzTV:
//            "МУЗ-ТВ"
//        }
//    }
//
//}
//
//
//class TV: Television {
//
//    private var descriptionTV: (label : String, model : String)
//    private var isOn: Bool
//    private var currentChannel: TVChannel = .firstChannel
//
//
//    init(label: String,
//         model: String,
//         isOn: Bool = false) {
//
//        descriptionTV.label = label
//        descriptionTV.model = model
//        self.isOn = isOn
//
//
//    }
//
//    func switchChannel(_ channel: TVChannel) {
//        currentChannel = channel
//    }
//
//
//    func toggleTV() {
//        isOn.toggle()
//        if isOn == true {
//            print("Телевизор \(descriptionTV.label) - \(descriptionTV.model) включен")
//        } else {
//            print("Телевизор \(descriptionTV.label) - \(descriptionTV.model) выключен")
//        }
//    }
//
//    func showCurrentChannel() {
//        guard isOn == true else {
//            print("Телевизор \(descriptionTV.label) - \(descriptionTV.model) выключен")
//            return
//        }
//        print(currentChannel.channel)
//    }
//
//}
//
//
//var tv = TV(label: "Юность", model: "156")
//
//// тут можно поиграться с телевизором
//
//
//struct Sound {
//
//    var volume: Decimal
//
//}
//
//struct Display {
//
//    var isColor: Bool
//}
//
//struct SettingTV {
//
//    var sound: Sound = Sound(volume: 0.2)
//    var display: Display = Display(isColor: true)
//
//}
//
//enum InputTV {
//
//    case antenna
//    case cable
//    case video
//
//}
//
//
//class NewTV: TV {
//
//    private var setting: SettingTV = SettingTV()
//    private var muteSound: Decimal = 0
//    private var input: InputTV
//
//    init(label: String, model: String, input: InputTV) {
//        self.input = input
//        super.init(label: label, model: model)
//
//        selectionInput(input)
//
//
//    }
//
//    override func switchChannel(_ channel: TVChannel) {
//        switch input {
//        case .antenna:
//            super.switchChannel(channel)
//        default:
//            print("Не выбран вход")
//        }
//    }
//
//    override func showCurrentChannel() {
//        switch input {
//        case .antenna:
//            super.showCurrentChannel()
//        default:
//            print("Не выбран вход")
//        }
//    }
//
//    func selectionInput(_ input: InputTV) {
//        self.input = input
//        switch input {
//        case .antenna:
//            print("Показать аналоговые каналы")
//        case .cable:
//            print("Показать кабельные каналы")
//        case .video:
//            print("Выбран видео - вход")
//        }
//
//    }
//
//
//    func settingColor() {
//        setting.display.isColor.toggle()
//
//    }
//
//    func addVolume() {
//        if setting.sound.volume != 1 {
//            setting.sound.volume += 0.1
//            print("Звук прибавлен \(setting.sound.volume)")
//        } else {
//            print("Максимальная громкость \(setting.sound.volume)")
//        }
//    }
//
//    func removeVolume() {
//        if setting.sound.volume != 0 {
//            setting.sound.volume -= 0.1
//            print("Звук убавлен \(setting.sound.volume)")
//        } else {
//            print("Минимальная громкость \(setting.sound.volume)")
//        }
//    }
//
//    func mute() {
//        if setting.sound.volume != 0 {
//            muteSound = setting.sound.volume
//            setting.sound.volume = 0
//            print("Звук отключен \(setting.sound.volume)")
//        } else {
//            setting.sound.volume = muteSound
//            print("Звук включен \(setting.sound.volume)")
//        }
//    }
//
//}
//
//var newTV = NewTV(label: "Samsung", model: "I-123", input: .antenna)
//
//// тут можно поиграться с телевизором


// MARK: Home Work 2.2. Свойства и методы

/// Задача 1.


//enum Country {
//
//    case belarus
//    case russia
//    case ukraine
//    case poland
//    case usa
//    case germany
//
//
//    var country: String {
//        switch self {
//        case .belarus:
//            "Республика Беларусь"
//        case .russia:
//            "Российская Федерация"
//        case .ukraine:
//            "Украина"
//        case .poland:
//            "Польша"
//        case .usa:
//            "США"
//        case .germany:
//            "Германия"
//        }
//    }
//
//}
//
//
//struct Musician: Equatable {
//
//    var name: String
//    var country: Country
//
//
//    init(name: String, country: Country) {
//        self.name = name
//        self.country = country
//    }
//
//}
//
//
//struct Track: Equatable {
//
//    var name: String
//    var musician: Musician
//    let style: Music
//    private var durationInSeconds: Int
//
//    var timeTrack: String {
//        let minute =  String(durationInSeconds / 60)
//        let seconds = durationInSeconds % 60 < 10 ? "0" + String(durationInSeconds % 60) : String(durationInSeconds % 60)
//
//        let time = minute + ":" + seconds
//        return time
//    }
//
//    init(name: String,
//         musician: String,
//         country: Country,
//         durationInSeconds seconds: Int,
//         style: Music) {
//        self.name = name
//        self.durationInSeconds = seconds
//        self.musician = Musician(name: musician, country: country)
//        self.style = style
//    }
//
//    static func == (lhs: Track, rhs: Track) -> Bool {
//        lhs.name == rhs.name &&
//        lhs.musician == rhs.musician &&
//        lhs.durationInSeconds == rhs.durationInSeconds
//    }
//
//
//
//}
//
//enum Music {
//    case rock
//    case pop
//    case dance
//    case classical
//    case rap
//
//    var nameDiscription: String {
//        switch self {
//        case .rock: return "Rock"
//        case .pop: return "Pop"
//        case .dance: return "Dance"
//        case .classical: return "Classical"
//        case .rap: return "Rap"
//        }
//    }
//
//}
//
//class Category: Equatable {
//
//    var name: Music
//    var trackList: [Track] = []
//    var listCount: Int {
//        trackList.count
//    }
//
//    init(name: Music) {
//        self.name = name
//    }
//
//    static func == (lhs: Category, rhs: Category) -> Bool {
//        lhs.name == rhs.name &&
//        lhs.trackList == rhs.trackList &&
//        lhs.listCount == rhs.listCount
//    }
//
//    func addTrack(_ track: Track) {
//        trackList.append(track)
//
//    }
//
//    func removeTrack(_ track: Track) {
//        guard let index = trackList.firstIndex(of: track) else {
//            print("track not found")
//            return
//        }
//        trackList.remove(at: index)
//        print("track removed")
//
//    }
//}
//
//var trackOne = Track(name: "Hello", musician: "John", country: .ukraine, durationInSeconds: 186, style: .rock)
//var trackTwo = Track(name: "World", musician: "Slip", country: .usa, durationInSeconds: 144, style: .pop)
//var trackFree = Track(name: "Pinch", musician: "Gate", country: .belarus, durationInSeconds: 273, style: .dance)
//var trackFour = Track(name: "Kaba", musician: "Axe", country: .germany, durationInSeconds: 343, style: .rock)
//var trackFive = Track(name: "Five", musician: "Army", country: .usa, durationInSeconds: 493, style: .classical)
//
//
//var allTracks: [Track] = [trackOne, trackTwo, trackFree, trackFour, trackFive]
//
//var rock = Category(name: .rock)
//var pop = Category(name: .pop)
//var dance = Category(name: .dance)
//var classical = Category(name: .classical)
//
//
//class Library: Equatable {
//
//    var categories: [Category] = [] {
//        willSet {
//            let index = newValue.endIndex - 1
//            print("Category \(newValue[index].name)  will be added to categories")
//        }
//
//        didSet {
//           // some code:
//
//        }
//    }
//
//    // MARK: subscript
//
//    subscript(index: Int) -> String {
//        guard categories.isEmpty == false else {
//            return "Library is empty"
//        }
//        return categories[index].name.nameDiscription
//    }
//
//    func addCategory(_ category: Category) {
//        categories.append(category)
//    }
//
//    func removeCategory(_ category: Category) {
//        guard let index = categories.firstIndex(of: category) else {
//            print("category not found")
//            return
//        }
//        categories.remove(at: index)
//    }
//
//    static func == (lhs: Library, rhs: Library) -> Bool {
//        lhs.categories == rhs.categories
//    }
//
//    func exchangeTrack(from categoryOne: Category, to categoryTwo: Category, _ track: Track) {
//        guard let index = categoryOne.trackList.firstIndex(of: track ) else {
//            print("track not found")
//            return
//        }
//        categoryOne.trackList.remove(at: index)
//        categoryTwo.trackList.append(track)
//        print("\(track.name) added to \(categoryTwo.name), lenght - \(track.timeTrack)")
//
//
//    }
//
//    func trackDistribution(_ tracks: [Track]) {
//
//        guard categories.count > 0, tracks.isEmpty == false else {
//            print("no categories")
//            return
//        }
//
//        for category in categories {
//            switch category.name {
//            case .rock:
//                let tracks = tracks.filter({$0.style == .rock})
//                category.trackList.append(contentsOf: tracks)
//                tracks.forEach({ print("Track \($0.name) added to \(category.name.nameDiscription)")})
//            case .pop:
//                let tracks = tracks.filter({$0.style == .pop})
//                category.trackList.append(contentsOf: tracks)
//                tracks.forEach({ print("Track \($0.name) added to \(category.name.nameDiscription)")})
//            case .dance:
//                let tracks = tracks.filter({$0.style == .dance})
//                category.trackList.append(contentsOf: tracks)
//                tracks.forEach({ print("Track \($0.name) added to \(category.name.nameDiscription)")})
//            case .classical:
//                let tracks = tracks.filter({$0.style == .classical})
//                category.trackList.append(contentsOf: tracks)
//                tracks.forEach({ print("Track \($0.name) added to \(category.name.nameDiscription)")})
//            case .rap:
//                let tracks = tracks.filter({$0.style == .rap})
//                category.trackList.append(contentsOf: tracks)
//                tracks.forEach({ print("Track \($0.name) added to \(category.name.nameDiscription)")})
//
//
//            }
//        }
//    }
//



//}


//var library = Library()
//library.addCategory(rock)
//library.addCategory(pop)
//library.addCategory(dance)




// MARK: Home Work - Замыкания (Closures)

//// Задача 1
//
//typealias Closer = (Double, Double) -> Double
//
//func algoritm(_ weight: Double, _ flightLenght: Double, _ closure: Closer) {
//    print(closure(weight, flightLenght))
//}
//
//
//
////var scientistOne: Closer = { num, num2 in
////    num + num2
////
////}
////algoritm(10, 10, scientistOne)
//
//
//var scientistOne: () = algoritm(10.76, 12000.34) { weight, lenght in
//    return lenght / 100 / weight
//}
//
//var scientistTwo: () = algoritm(10.76, 12000.34) { weight, lenght in
//    return (lenght / 100) * (weight / 60)
//}
//
//
//// Задача 2 (Сокращенная форма задачи 1 - trailing closure)
//
//print("trailing closure")
//
//scientistOne = algoritm(10, 10) { $0 / 100 / $1 }
//
//scientistTwo = algoritm(10, 10) { ($0 / 100) * ($1 / 60) }
//
//
//
///// example - callback
//
//func callback(completion: () -> Void) {
//
//    /* some code */
//    print("upload")
//
//    completion()
//}
//
//callback {
//
//    /* some code */
//    print("unload")
//}
//
//
//// Задача 3.
//
//algoritm(10, 10) { weight, lenght in
//    weight * lenght
//}
//
///// В данной задаче я вынес замыкание за скопки




//class Artist {
//
//    var name: String { "" }  // защита от изменения - Get only
//
//    var country: Country { .usa }
//
//    var style: Music { .pop }
//
//
//    func createdTrack(_ track: String) {
//
//        print("I'm \(name), i created a track: \(track)")
//
//    }
//
//    func singTrack(_ track: String) {
//
//        print("I'm \(name),  i'm  singing a track: \(track)")
//
//    }
//
//
//}
//
//
//final class Eminem: Artist {
//
//    override var name: String { "Eminem" }
//
//    override var country: Country { .usa }
//
//    override var style: Music { .rap }
//
//
//    override func createdTrack(_ track: String) {
//        super.createdTrack(track)
//        print("This track is new hit")
//    }
//
//}
//
//
//var eminem = Eminem()
//eminem.createdTrack("Stan")
//eminem.singTrack("Sing for the moment")
//
//
//
//
//final class MerilynManson: Artist {
//
//    override var name: String { "Merilyn Manson" }
//
//    override var style: Music { .rock }
//
//    override var country: Country { .usa }
//
//}
//
//
//var merilyn = MerilynManson()
//
//
//final class OlegGazmanov: Artist {
//
//    override var name: String { "Олег Газманов" }
//
//    override var style: Music { .pop }
//
//    override var country: Country { .russia }
//
//    override func singTrack(_ track: String) {
//        super.singTrack(track)
//        dance()
//    }
//
//    private func dance() {
//        print("Плясать русский народный танец")
//    }
//
//}
//
//
//var oleg = OlegGazmanov()
//oleg.singTrack("Есаул")
//
//
//
//var artists: [Artist] = []
//
//artists.append(oleg)
//artists.append(eminem)
//artists.append(merilyn)
//
//for ( _ , value) in artists.enumerated() {
//    print(value.name)
//}
//
//
//
//var someArray = [3, 4, 7, 43, 975, 39, 795, 66, 30, 18, 609, 297, 657, 15, 45, 3, 2, 436, 1, 23, 564]
//someArray.first
//
//var clock = ContinuousClock()
//func sorting(_ array: [Int]) -> [Int] {
//    guard array.count > 1 else { return array }
//    var timer = Timer()
//
//    var pivot = array[array.count / 2]
//    let less = array.filter { $0 < pivot }
//    let equal = array.filter { $0 == pivot }
//    let greater = array.filter { $0 > pivot }
//
//    return sorting(less) +  equal + sorting(greater)
//
//
//
//}
//
//
//
//clock.measure {
//    let result = sorting(someArray)
//}


// MARK: Home Work - 3.2. Протоколы и расширения


//struct Accessory {
//
//    var name: String
//    var price: Double
//
//}
//var accessoriesLada: [Accessory] = []
//var tinting = Accessory(name: "Тонировка", price: 15_000)
//var alarmSystem = Accessory(name: "Автосигнализация", price: 26_000)
//var spotsWheelsR17 = Accessory(name: "Спортивные диски R17", price: 60_000)


protocol CarProtocol {
    
    var model: String { get }
    var color: UIColor { get }
    var buildDate: Int { get }
    var price: Double { get set }
    var accessories: [Accessory] { get set }
    var isServiced: Bool { get set }
    
}

enum Accessory {
    
    case tinting
    case alarmSystem
    case spotsWheelsR17
    
    var price: Double {
        switch self {
        case .tinting:
            return 15_000
        case .alarmSystem:
            return 26_000
        case .spotsWheelsR17:
            return 60_000
        }
    }
    
    var description: String {
        switch self {
        case .tinting:
            "Тонировка"
        case .alarmSystem:
            "Автосигнализация"
        case .spotsWheelsR17:
            "Спортивные диски R17"
        }
    }
    
    static var accessories: [Accessory] {
        [.tinting, .alarmSystem, .spotsWheelsR17]
    }
}



struct Lada: CarProtocol, Equatable {

    var model: String
    var color: UIColor
    var buildDate: Int
    var price: Double
    var accessories: [Accessory]
    var isServiced: Bool
    
    init(model: String, color: UIColor, buildDate: Int, price: Double, accessories: [Accessory] = [], isServiced: Bool = true) {
        self.model = model
        self.color = color
        self.buildDate = buildDate
        self.price = price
        self.accessories = accessories
        self.isServiced = isServiced
    }
    

}


var vesta: CarProtocol = Lada(model: "Vesta - sedan", color: .gray, buildDate: 2024, price: 2_000_000)

protocol DealershipProtocol {
    
    var name: String { get }
    var showroomCapacity: Int { get }
    var stockCars: [CarProtocol] { get set }
    var showroomCars: [CarProtocol] { get set }
    var cars: [CarProtocol] { get }

    func offerAccesories( _ accesories: [Accessory])
    func presaleService( _ car: inout CarProtocol)
    func addToShowroom( _ car: CarProtocol?)
    func sellCar( _ car: CarProtocol)
    func orderCar()
    
}

final class DealerLada: DealershipProtocol {
    
    var name: String
    var showroomCapacity: Int
    var stockCars: [CarProtocol]
    var showroomCars: [CarProtocol]
    var cars: [CarProtocol] {
        stockCars + showroomCars
    }
    
    init(name: String, showroomCapacity: Int) {
        self.name = name
        self.showroomCapacity = showroomCapacity
        stockCars = [CarProtocol]()
        showroomCars = [CarProtocol]()
    }
    
    func offerAccesories(_ accesories: [Accessory]) {
        print("Предлогаем вам приобрести наши аксуссуры:")
        accesories.forEach { print( "\($0.description) - стоимость \($0.price) рублей" )  }
    }
    
    func presaleService(_ car: inout CarProtocol) {
        if car.isServiced == false {
            car.isServiced = true
            print("Предпродажная подготовка выполнена")

        } else {
            print("Предпродажная подготовка выполнена ранее")

        }
        
        
    }
    
    func addToShowroom(_ car: CarProtocol?) {
        
        guard car != nil else {
            print("Требуется заказать или создать автомобиль")
            return
        }
        
        guard car!.isServiced else {
            print("Сделайте предпродажную подготовку")
            return
        }
 
        guard showroomCars.count < showroomCapacity else {
            print("Нет мест для автомобиля в шоуруме")
            return
        }
        
        if let index = stockCars.firstIndex(where: { $0 as? Lada  == car as? Lada  }) {
            showroomCars.append(car!)
            stockCars.remove(at: index)
            print("\(car!.model) перемещен в шоурум")

        } else {
            showroomCars.append(car!)
            print("Авто перемещен в шоурум напрямую с завода")
        }

    }
    
    
    
    func sellCar(_ car: CarProtocol) {
        
        let price = car.price
        let accesoriesPrice = Accessory.accessories.reduce(0) { $0 + $1.price }
        let finalPrice = price + accesoriesPrice
        
        
        if let index = showroomCars.firstIndex(where: { $0 as? Lada  == car as? Lada  }) {
            guard car.isServiced  else {
                print("Необходимо сделать предпродажную подготовку")
                return
            }
            if car.accessories.count  ==  0 {
                offerAccesories(Accessory.accessories)
            }
            showroomCars.remove(at: index)
            print("\(car.model) продана по цене \(price), общая сумма с учетом стоимости дополнительных аксессуаров: \(finalPrice)")

            
        } else if let index = stockCars.firstIndex(where: { $0 as? Lada  == car as? Lada  }) {
            guard car.isServiced  else {
                print("Необходимо сделать предпродажную подготовку")
                return
            }
            if car.accessories.count  ==  0 {
                offerAccesories(Accessory.accessories)
            }
            stockCars.remove(at: index)
            print("\(car.model) продана по цене \(price), общая сумма с учетом стоимости дополнительных аксессуаров: \(finalPrice)")

            
            
        } else {
            guard car.isServiced  else {
                print("Необходимо сделать предпродажную подготовку")
                return
            }
            if car.accessories.count  ==  0 {
                offerAccesories(Accessory.accessories)
            }
            print("\(car.model) продана по цене \(price), общая сумма с учетом стоимости дополнительных аксессуаров: \(finalPrice)")
        }
        
    }
    
    
    
    func orderCar() {
        
        let colorArray: [UIColor] = [.black, .white, .brown, .gray, .lightGray, .darkGray]
        let randomIndex = Int.random(in: 0..<colorArray.count)
        let currentYear = Calendar.current.component(.year, from: .now)
        
        var grantaSedan: CarProtocol = Lada(model: "Гранта седан",
                                            color: colorArray[randomIndex],
                                            buildDate: Int.random(in: currentYear - 1...currentYear),
                                            price: Double.random(in: 950_000...1_500_000),
                                            accessories: Accessory.accessories,
                                            isServiced: Bool.random())
        
        var vestaSedan: CarProtocol = Lada(model: "Vesta седан",
                                            color: colorArray[randomIndex],
                                            buildDate: Int.random(in: currentYear - 1...currentYear),
                                            price: Double.random(in: 1_550_000...2_500_000),
                                            accessories: Accessory.accessories,
                                            isServiced: Bool.random())
        
        var vestaCombi:  CarProtocol = Lada(model: "Vesta универсал",
                                            color: colorArray[randomIndex],
                                            buildDate: Int.random(in: currentYear - 1...currentYear),
                                            price: Double.random(in: 1_850_000...2_500_000),
                                            accessories: Accessory.accessories,
                                            isServiced: Bool.random())
        var niva:  CarProtocol = Lada(model: "Нива 4х4",
                                            color: colorArray[randomIndex],
                                            buildDate: Int.random(in: currentYear - 1...currentYear),
                                            price: Double.random(in: 1_150_000...1_500_000),
                                            accessories: Accessory.accessories,
                                            isServiced: Bool.random())
        
        var tempArray: [ CarProtocol] = []
        tempArray.append(grantaSedan)
        tempArray.append(vestaSedan)
        tempArray.append(vestaCombi)
        tempArray.append(niva)
        
        let randomAuto = Int.random(in: 0..<tempArray.count)
        stockCars.append(tempArray[randomAuto])
        print("Заказан автомобиль \(tempArray[randomAuto].model)")
        
    }
    
    
}



var lada = DealerLada(name: "Самара - Лада", showroomCapacity: 12)

lada.addToShowroom(lada.stockCars.first)
lada.orderCar()
lada.orderCar()
lada.orderCar()
lada.orderCar()
lada.orderCar()
lada.orderCar()
lada.orderCar()
lada.orderCar()
lada.orderCar()
lada.addToShowroom(lada.stockCars.first)
if var car = lada.stockCars.first {
    lada.presaleService(&car)

}
lada.addToShowroom(lada.stockCars.first)
lada.addToShowroom(lada.stockCars.first)

enum CarError: Error {
    
    case notCarInStock
    case notCarInShowroom
    case unsatisfiedConditions(String)
    case notCars
    case haveACar
    
    var description: String {
        switch self {
        case .notCarInStock:
            ""
        case .notCarInShowroom:
            ""
        case .unsatisfiedConditions:
            "Автомобиль не подходит по году выпуска"
        case .notCars:
            ""
        case .haveACar:
            ""
        }
    }
    
}


protocol SpecialOffer {
    
    func addEmergencyPack()
    func makeSpecialOffer() throws
    func checkForDiscount() throws
     
    
}


extension SpecialOffer {
    
    func addEmergencyPack() {
        print("Добавлена акция \"Аварийный запас\"")
    }
    
}


extension DealerLada: SpecialOffer {
    
    func makeSpecialOffer() throws {
        
        guard stockCars.isEmpty == false else {
            throw CarError.notCarInStock
        }
        
        for ( _ , value ) in stockCars.enumerated() {
            
            let buildDate = value.buildDate
            let currentDate = Calendar.current.component(.year, from: .now)
            
            if currentDate > value.buildDate {
                let salePrice = value.price - value.price * 0.15
                addEmergencyPack()
                print("Акция на прошлогодний автомобиль - скидка 15 процентов, \nцена на автомобиль \(value.model)  c учетом скидки составит \(salePrice) рублей")
            } else {
                throw CarError.unsatisfiedConditions(value.model)
            }
        }
    }
    
    func checkForDiscount() throws {
        
        guard cars.isEmpty == false else {
            throw CarError.notCars
        }
        
        let curentDate = Calendar.current.component(.year, from: .now)
        
        for ( _ , car ) in cars.enumerated() {
            if car.buildDate < curentDate {
                if showroomCars.contains(where: { auto in
                    car as? Lada  == auto as? Lada
                }) {
                    print("Авто есть в шоуруме")
                    throw CarError.haveACar
                } else {
                    addToShowroom(car)
                    stockCars.removeAll(where: { $0 as? Lada == car as? Lada })
                }
            } else {
                throw CarError.unsatisfiedConditions(car.model)
            }
        }
        
        
    }
    

}

lada.addEmergencyPack()


do {
    
    try lada.makeSpecialOffer()
    
} catch  CarError.unsatisfiedConditions(let car) {
    
    print("\(car) не подходит по году выпуска")
    
} catch CarError.notCarInStock {
    
    print(CarError.notCarInStock.self)
    
}

print("________________________")

do {
    
    try lada.checkForDiscount()
    
} catch CarError.notCars {
    
    print(CarError.notCars.self)
    
} catch CarError.haveACar {
    
    print(CarError.haveACar.self)
    
} catch CarError.unsatisfiedConditions(let car) {
    
    print("\(car) не подходит по году выпуска")

}







print("_________")


var bool = true
var bufer = 0
var temp = 3
var array = [1,2,3,4]



func guardDemo() {
    
    for i in array {
        guard !bool else {
            print("guard")
            bufer = temp
            continue
        }
        print(i)
        print("я тут")
        
        guard temp == 3 else {
            continue
        }
        print(i)
    }
    

}

guardDemo()


