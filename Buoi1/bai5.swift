print("Bai 5")
print("Tìm giá trị lớn nhất của hai số")

print("Nhập số thứ nhất:")
var a: Float = Float(readLine()!)!
print("Nhập số thứ hai:")
var b: Float = Float(readLine()!)!
if a == b {
    print("Hai số bằng nhau")
} else {
    if a < b {
        print("Giá trị lớn nhất của 2 số là \(b)")
    } else {
        print("Giá trị lớn nhất của 2 số là \(a)")
    }
}
