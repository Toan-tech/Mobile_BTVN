print("Nhập một năm công lịch bất kỳ , kiểm tra xem năm đó có phải năm nhuận hay không")

Cách 1:
func namNhuan() {
    print("Nhập số năm:")
    var a: Int = Int(readLine()!)!
    if a % 4 == 0 && a % 100 != 0 {
        print("\(a) là năm nhuận")
    } else if
        a % 400 == 0 {
        print("\(a) là năm nhuận")
    } else {
        print("\(a) không là năm nhuận")
    }
}
namNhuan()


Cách 2:
func leap() {
print("Nhập năm:")
let year = Int(readLine()!)!
if (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0) {
print("\(year) là năm nhuận")
else
print("\(year) không là năm nhuận")
leap()
