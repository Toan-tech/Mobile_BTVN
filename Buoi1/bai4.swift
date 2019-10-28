print("Bai 4")
print("Cho 2 số a và b, kiểm tra xem a có chia hết cho b không")

print("Nhập số thứ nhất:")
var a: Int = Int(readLine()!)!
print("Nhập số thứ hai:")
var b: Int = Int(readLine()!)!
if b == 0 {
    print("\(a) không chia được cho 0")
} else if
    a % b == 0 {
        print("\(a) chia hết cho \(b)")
} else {
    print("\(a) không chia hết cho \(b)")
}
