import UIKit

// Basic operators
// operators are special symbols that make operations between operands

// unary
// -3, !a, Any?
// unary operators might be prefix and postfix

// binary
// 2 + 3
// 2 and 3 are operands

// ternary
// a ? b : c
// if a == true -> b else c

// kinds of operators
// arithmetical
// assigning operators
// comparison operators
// range operators
// logical operators

// arithmetical operators - + / *
// reminder operator %
// 4 % 2 == 0 -> true

// assigning operators
// =
// let a =  4
// let b = a
// assigning operator binded to arithmetical
// -= += *= /=

// comparison operators
// a == b, this operator compare operands and return bool
// != check if operands are not equal
// <= less, >= greater, <, >

// range operators
// create the range of values than can be used in if else statement
// in for in loop, and while working with collctions

// closed range operator
// a...b

// half-closed operator
// a..<b fro a to b, b is not included

// one-side range operator
// a... any possible amount of items in range from a to infinity

// logical operators
// return bool
// logic NO !
// && AND
// || OR



// String
// recomended
let someString = ""

// if class property without default value
let someString1: String

// concatination strings
var anotherString = "Hello " + someString

// multiline literals
let multiline = """
    some text
    some text
"""

// string interpolation
let interpolation = """
    another text
    \(multiline)
    this is interpolation
"""




// if else operator

let condition = true

if condition {
    // this is a local scope & statement body
    // some code
}

if condition {
    // some code
} else {
    // some code
}

if condition {
    // some code
} else if condition {
    // some code
} else if condition {
    // some code
} else {
    // some code
}

// ternary operator as an alternative to "if else"
var ternaryValue = ""
var ternaryTemp = 20

ternaryValue = ternaryTemp < 13 ? "still cold" : "finaly warm"

// if string is too long it's okay to separate it
ternaryValue = ternaryTemp < 19
    ? "still cold"
    : "finaly warm"
// use ternary if you need to check simple condition of two conditions


// switch
// you put in switch condition to compare

let grade = "A"

switch grade {
case "A", "a":
    print("excellent")
case "B":
    print("good")
case "C":
    print("satisfied")
default:
    print("invalid grade")
}

// compare range in switch
let approxCount = 146
let countedMoons = "moons orbitiong Saturn"
var naturalCount = "" // like dozens of...

switch approxCount {
case ..<0:
    print("error") // check if there is at least one moon
    // exclude negative numbers in range from negative infinity to zero, zero not included
case 0:
    naturalCount = "zero"
case 1:
    naturalCount = "one"
case 2..<5:
    naturalCount = "a few" // from 2 to 4
case 5...11: // from 5 to 11
    naturalCount = "several"
case 12...99:
    naturalCount = "dozens of"
default:
    naturalCount = "a lot" // as far as all ranges from 0 to 99 is defined
    // default branch will check hundreds
}

print("there are \(naturalCount) \(countedMoons)")


// Homework if else & switch

///Представьте, что вы владелец розничного магазина и вам необходимо установить стоимость товара в зависимости от его количества. До 9 единиц товара включительно цена составляет 1000 рублей за штуку. От 10 до 19 единиц товара включительно - 800 руб. шт. И 600 рублей за товар от 20 единиц и выше. Создайте условие при котором цене будет присвоено соответсвующее значение, используя конструкцию if-else. Подсчитайте общую сумму и выведите результат на консоль.
///
let quantity = 12
let price: Int
let totalSum: Int

if quantity < 0 {
    price = 0
} else if quantity < 10 {
    price = 1000
} else if quantity < 20 {
    price = 800
} else {
    price = 600
}

totalSum = quantity * price
print("qnty: \(quantity)pcs, price: \(price) rub, total sum is \(totalSum)")

// same task but bit higher lvl

let quan = 9
let sndPrice: Int
let price1: Int

if quan < 0 {
    sndPrice = 0
} else if 0...9 ~= quan { // ~= this operator check if any value from 0 to 9 is in quan variable and return bool
    sndPrice = 1000
} else if 10...19 ~= quan {
    sndPrice = 800
} else {
    sndPrice = 600
}

// higher lvl
if quan < 0 {
    price1 = 0
} else if (0...9).contains(quan) { // also return bool
    price1 = 800
}

/// HOME TASK

///После выполнения кода, расположенного в блоке case, происходит завершение работы конструкции switch-case. Однако иногда бывают такие случаи, когда после выполнения кейса необходимо выполнить переход к следующему case. Для этого в конце блока case указывается ключевое слово fallthrough.
///Создайте три уровня готовности к чрезвычайным ситуациям: A, B и C. Каждая степень должна предусматривать ряд мероприятий, причем каждый последующий уровень должен включать в себя мероприятия предыдущих уровней. В зависимости от переданного уровня необходимо вывести на консоль все предназначенные мероприятия. При этом минимальный уровень готовности — это C, максимальный — A (включает в себя мероприятия уровней B и C).
///В случае возникновения ситуации A необходимо "Выключить все электрические приборы". B - "Закрыть входные двери и окна". C - "Соблюдать спокойствие"

let emergencyLevel = "B"

switch emergencyLevel {
case "A", "a":
    print("Выключить все электрические приборы")
    fallthrough // if this case is execute fallthrough will switch compilation to next case
case "b", "B":
    print("Закрыть входные двери и окна")
    fallthrough // we need it here because of task
case "C", "c":
    print("Соблюдать спокойствие")
default:
    break // not recomended in default branch
}

/// С помощью блоков case определяются возможные значения, которые может принять выражение. Однако Swift позволяет в пределах одного блока case указать не только на значение рассматриваемого параметра, но и на зависимость от какого-либо условия. Данный функционал реализуется с помощью ключевого слова where в блоке case. В этом задании вам необходимо отсортировать конфеты M&M's по цвету и по начинке. В первую кучку нужно собрать красные конфеты с шоколадом внутри. Во вторую кучку соберите все желтые конфеты с орехами. А в третью кучку коричневые с шоколадом и зеленые с шоколадом. Нужно реализовать только логику для сортировки конфет. Использовать кортежи при этом не нужно.

let color = "Brown"
let filling = "Choco"

switch color {
case "Red" where filling == "Choco":
    print("pile #1")
case "Yellow" where filling == "Nuts":
    print("pile #2")
case "Brown" where filling == "Choco",
     "Green" where filling == "Choco":
    print("pile #3")
default:
    break
}


// Collections
// sequence of different elements
// collections might be ordered and disordered
// items in collections might be uniq or not

// arrays - ordered items, items might be not uniq
// array naming - don't use "array" in name and use plural: numbers, items, properties

// init array
let strings = ["asd", "asd", "dfg"]
// arrays are less performance collections

// explicit data type
let characters: [Character] = ["2", "r"] // let name = [Data Type] = [value]
let ints: [Int] = [] // empty

// assing arrays with items
var items: [Int] = []
items = [1]
// or few at a time
items = [2, 3, 2, 65, 45]
items = [0, 0, 0]
// each assignment replace previous assignment

// simple way of adding new elements
items += [2, 3, 9]

// operate with array using methods
// add item at the end of the array
items.append(9)
items.append(4)
// add item at specific index
items.insert(77, at: 0)
// create new array from existing array
var items1 = items + [99, 99]
// remove last + creating variable from removed element
let newFromRemoved = items1.removeLast()
// remove first - same thing
// remove from specific index
items1.remove(at: 3)
// check amount of elements
items1.count
// remove all
items1.removeAll()
// or reset arrya
items1 = [] // emtpy brakets = empty value
// find index by element
var items2 = [1, 2, 3]
items2.firstIndex(of: 2)
// replace item
items2[1] = 22 // [index] = new item
// check if it's empty
items2.isEmpty // false
// logic operator with array
if !items2.isEmpty { // if array is not empty
    items2.append(7) // add new item
}



// Set - disordered collection, doesn't have index, all items unique, no twins

let someStrings: Set = ["d", "f", "h"]
// init empty set and specify data type
let emptyCollection: Set<String> = []
var newCollection: Set<String> = ["gjf", "dra", "drgd"]
// as far as set disordered to add new item in it use insert
newCollection.insert("ert")
newCollection.contains("ert") // true
// if needed to loop thru set use method sorted
let newCollectionFromAnother = newCollection.sorted() // return new ordered array with set items
// .sorted(by: >) - from greater to less, from end to start, .sorted(by: <) from start to end



// Dictionaries - unique keys, [key: value]

let users = [1: "Tim Cook", 2: "John Appleseed"]
// empty dict with explicit type
var row: [String: String] = [:]
// fill dict with values
row = ["Plane": "Airport", "Car": "Road"]
// change value by key
row["Plane"] = "Airbus" // low syntax
let oldValueDict = row.updateValue("New value", forKey: "Car") // preferable method
// add new pair
row["New key"] = "new value"
// remove item
row.removeValue(forKey: "New key") // this value migth be saved in var
// .count can be used
// .removeAll()

// Strings are also collection of symbols
let stringCollection = String(["H", "e", "l", "l", "o"])
// same methods can be used
stringCollection.count
stringCollection.contains("H") // true


// Control flow operators
// used for multiple performance of task
// for in loop - most common, used for loop thru all types of collections
// in for loop contruction property must be named depending on current conditions
// for example for string in array of strings { condition }
// all properties defined in for loop must be used or replace it with _

// loop thru range
for number in 1...5 {
    print(number)
} // will print 1, 2, 3, 4, 5

// loop thru collection
let hello = "hello"
for char in hello {
    print(char)
}

// multiple times performance
for _ in 1...3 {
    print("Hello, world!")
}

// final result of for in loop
var finalResult = 0
for number in 1...6 {
    finalResult += number
}
print(finalResult)

// loop thru array - use ctrl+M for format to multiline
let fruits = [
    "apple",
    "banana",
    "pineapple",
    "plum",
    "pear",
    "apple"
]

var appleCount = 0

for fruit in fruits {
    if fruit == "apple" {
        appleCount += 1
    }
}
print("there are \(appleCount) apples in basket")

// loop thru dictionary
let numberOfLegs = ["spider": 8, "human": 2, "cat": 4, "ant": 6]

for (creature, legs) in numberOfLegs { // use tuple in parathesis
    print("\(creature)s have \(legs) legs")
}

// while loops
// used for executing taks before condition WHILE condition is true

var counterWhileLoopProp = 0

while counterWhileLoopProp < 5 {
    print("Counter is \(counterWhileLoopProp)")
    counterWhileLoopProp += 1
}

// repeat while
// first execute code, then check condition

var counterRepeatWhileLoop = 0

repeat {
    print("Counter is \(counterRepeatWhileLoop)")
    counterRepeatWhileLoop += 1
} while counterRepeatWhileLoop <= 5

/// HOME TASK
///
/// №1
/// Пользователь открывает вклад (deposit) в банке на 5 лет (period) на сумму 500 тыс. рублей. Процентная ставка годовых (rate) составляет 11%. Необходимо просчитать сумму дохода (profit) по окончании срока действия вклада и вывести результат на консоль в таком виде: "Сумма вклада через <... > лет увеличится на <...> и составит <...> рублей".  Для решения данной задачи используйте цикл for-in.

/// Сумма вклада увеличивается с каждым годом и процент нужно считать уже от увеличенной суммы.

var deposit = 500000.0
let period = 5
let rate = 0.11
var profit = 0.0
// если использовал аннатацию типа в одном свойстве - надо использовать тогда во всех
for _ in 1...period {
    let currentProfit = deposit * rate
    deposit += currentProfit
    profit += currentProfit
}

print("Сумма вклада через \(period) лет увеличится на \(profit.rounded()) и составит \(deposit.rounded()) рублей")

/// №2
/// 2.1 Создайте целочисленный массив данных с любым набором чисел.
let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]

/// 2.2 Выведите на консоль все четные числа из массива
for evenNumber in numbers {
    if evenNumber % 2 == 0 {
        print("\(evenNumber) is even number")
    }
}

/// 2.3* В циклах для перехода к следующей итерации без выполнения последующего кода можно использовать оператор Continue. В этом случае весь последующий код игнорируется.

/// Используя оператор Continue выведите на консоль все нечетные числа из массива. Для этого нужно выполнить проверку на четность числа, и если оно оказалось четным перейти к следующей итерации.

for oddNumber in numbers {
    if oddNumber % 2 == 0 {
        continue
    }
    print("\(oddNumber) is odd number")
}

/// задание 3
/// Создайте цикл с интервалом от 1 до 10 в котором случайным образом должно вычисляться число в пределах от 1 до 10. Если выпадет число 5, выведите на консоль сообщение с номером итерации и остановите цикл. Пример сообщения: "Что бы выпало число 5 понадобилось <...> итераций". Для остановки цикла используйте оператор break. Данный оператор предназначен для досрочного завершения работы цикла. При этом весь последующий код в теле цикла игнорируется. Для определения случайного числа используйте функцию random: Int.random(in: 1...10)


for attempt in 1...10 {
    let randomNumber = Int.random(in: 1...10)
    if randomNumber == 5 {
        print("to get 5 needed \(attempt) attempts")
    }
}

/// задание 4
/// На 10 метровый столб лезет черепашка. За день она забирается на два метра, за ночь съезжает на один. Определите при помощи цикла, через сколько дней она заберется на столб? Подумайте над тем, какой цикл использовать в этой ситуации.

var turtleClibmed = 0
var numberOfDays = 0
var isDay = true

while turtleClibmed != 10 {
    if isDay {
        turtleClibmed += 2
        numberOfDays += 1
        isDay = false
    } else {
        turtleClibmed -= 1
        isDay = true
    }
}
print("it took \(numberOfDays) days to get turtle to top")

