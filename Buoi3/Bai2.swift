print("Tìm số nhỏ nhất và lớn nhất trong mảng số nguyên")

var mangSoNguyen = [Int] (arrayLiteral: 1, -30, 60, 26, 31, -90, 120)
var m = mangSoNguyen[0]
var n = mangSoNguyen[0]
print("Mảng số nguyên: 1, -30, 60, ,26, 31, -30, 120")
func maxmin(){
for i in mangSoNguyen {
    if m > i {
        m = i
    }
    if n < i {
        n = i
    }
}
    print("Số nhỏ nhất là: \(m)")
    print("Số lớn nhất là:\(n)")
}
maxmin()

