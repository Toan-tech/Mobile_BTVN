print("Bài 6")
print("Giải phương trình bậc nhất")

print("Phương trình: ax + b = c")
print("Nhập số a:")
var a: Float = Float(readLine()!)!
print("Nhập số b:")
var b: Float = Float(readLine()!)!
print("Nhập số c:")
var c: Float = Float(readLine()!)!
var x: Float
if a == 0 && b != c {
    print("Phương trình vô nghiệm")
} else {
    if a == 0 && b == c {
        print("Phương trình có vô số nghiệm thoả mãn")
    } else {
        x = (c - b)/a
        print("Nghiệm của phương trình là: \(x)")
    }
}
