import UIKit

//1) Ekrana 10 kez "Hello World" yazdır.
let helloWorldText : String = "Hello World"

for _ in 1...10 {
    print(helloWorldText)
}

//2) 43 sayısına kadar olan Tek sayıları print et.
for item in 0..<43 {
    if item % 2 != 0 {
        print(item)
    }
}

//3) Dışarıdan aldığı metnin soluna "TR-" ekleyip döndüren metot.
var text : String = "Büşra Nur"
print("TR- " + text)
print("TR- \(text)")

//4) Dışarıdan girilen bir sayının rakamları toplamını bulan program. (Örneğin kullanıcı 431 girdiğinde sonuç 8 olacak)
var number : Int = 431
var sum : Int = 0
while number > 0 {
    let character = number % 10
    sum = sum + character
    number = number / 10
}
print(sum)

//5) *** Doğduğum günden bugüne kaç gün geçtiğini gösteren metot? Dışarıdan date alacakint dönüyor.
let gregorianCalendar = NSCalendar(calendarIdentifier: .gregorian)!

var dateComponents = DateComponents()
dateComponents.year = 1991
dateComponents.month = 8
dateComponents.day = 6

let date = gregorianCalendar.date(from: dateComponents)!
let today = Date()

print(today.timeIntervalSince(date)/60/60/24)

//6) Dışarıdan girilen 3 sayıdan en büyüğünü bulan metot
let number1 : Int = 10
let number2 : Int = 5
let number3 : Int = 8

let largest = max(number1, number2, number3)
print(largest)

//7) Çarpma işlemini kullanmadan dışarıdan girilen 2 sayının çarpımını bulan metot
let number4 : Int = 5
let number5 : Int = 10
var sum1 : Int = 0

for _ in 1...number1 {
    sum1 = sum1 + number2
}
print(sum1)

//8) Dışarıdan bir metin alan aldığı metnin sadece ilk 3 harfini döndüren fonksiyon.
let text1 : String = "Büşra Nur"
let result = text1.prefix(3)
print(result)

//9)  Dışarıdan bir isim dizisi alan ve isimleri tek tek print eden fonksiyon
let names : [String] = ["Büşra Nur", "Hasan Basri", "Duman", "Tospik", "Şakir", "Rıfkı", "Aykız"]

for item in names {
    print(item)
}

//10) Dışarıdan bir isim alan ve ismin uzunluğu 4 den büyük ise print eden fonksiyon
let name : String = "Büşranur"
if name.count > 4 {
    print(name)
}

//11) Dışarıdan bir metin alan ve aldığı metinde kaç adet "e" harf olduğunu söyleyen bir fonksiyon
let text2 : String = "Büşranuree"
let countOfe = text2.filter { $0 == "e" }.count
print(countOfe)

//12) Dışarıdan bir metin alan aldığı metnin sadece ilk harfini büyük diğer harfleri küçük yazacak şekilde yeni bir metin oluşturarak dönen fonksiyon.
let word : String = "büşranur"
let newWord = word.prefix(1).uppercased() + word.dropFirst()
print(newWord)

