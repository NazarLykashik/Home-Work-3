/*:
 ## Упражнение - приведение типов и их контроль
 
 Создайте коллекцию типа [Any], включающую несколько вещественных чисел, целых, строк и булевых значений.  Распечатайте содержимое коллекции.
 */

import Foundation
let something: [Any] = [1.5, 1.87, 2, 5,"Petia", "Vasia", true, false]
for item in something{
print(item)
}
/*:
 Пройдите по всем элементам коллекции.  Для каждого целого, напечайте "Целое число " и его значение.  Повторите то же самое для вещественных чисел, строк и булевых значений.
 */
for item in something{
    if let element = item as? Int{
        print("Целое число \(item)")
    }else if let element = item as? Double{
        print("Вещественное число \(item)")
    }else if let element = item as? Float{
        print("Вещественное число \(item)")
    }else if let element = item as? Bool{
        print("Булевое значение \(item)")
    }else if let element = item as? String{
        print("Строка \(item)")
    }else{
        print("тип не определен")
}
}

/*:
 Создайте словарь [String : Any], где все значения — это смесь вещественных и целых чисел, строк и булевых значений.  Выведите пары ключ/значения для всех элементов коллекции.
 */
let dictionaryWithNimbersAndBools: [String: Any] =  ["Int": 1,
                                                     "Double": 1.5,
                                                     "Bool": true,
                                                     "Bool false": false,
                                                     "String": "PavbIv",
                                                     "String1": "56"]

for (key, value) in dictionaryWithNimbersAndBools{
    print("Key \(key) and value \(value)")
}

/*:
 Создайте переменную `total` типа `Double`, равную 0.  Переберите все значения словаря, и добавьте значение каждого целого и вещественного числа к значению вашей переменной.  Для каждой строки добавьте 1.  Для каждого булева значения, добавьте 2, в случае, если значение равно `true`, либо вычтите 3, если оно `false`.  Напечатайте значение `total`.
 */
var total = 0.0
for (key, value) in dictionaryWithNimbersAndBools{
    if let values = value as? Int{
        total += Double(values)
    }else if let values = value as? Double{
        total += values
    }else if let values = value as? String{
        total += 1
    }else if let values = value as? Bool{
        total += values ? 2 : -3
    }
}
 print(total)
/*:
 Обнулите переменную total и снова пройдите по всей коллекции, прибавляя к ней все целые и вещественные числа.  Для каждой строки, встретившейся на пути, попробуйте сконвертировать её в число, и добавьте это значение к общему.  Игнорируйте булевы значения.  Распечатайте итог.
 */
total = 0
for (key, value) in dictionaryWithNimbersAndBools{
    if let values = value as? Int{
        total += Double(values)
    }else if let values = value as? Double{
        total += values
    } else if let values = value as? String {
        if let number = Double(values) {
            total += number
        }
    }
}
print(total)
//: страница 1 из 2  |  [Далее: упражнение для приложения - типы тренировок](@next)
