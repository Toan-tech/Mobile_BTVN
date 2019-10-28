print("Hello, World!")

print("Tính tổng các chữ số trong 1 số")

print("Nhập số")
func tinhTong () -> Int {
    var m = 0
    var a = Int(readLine()!)!
    if a < 0 {
        print("Nhập lại")
     m = tinhTong()
    } else if a == 0 {
        m = 0
    } else {
        while a > 0 {
            m += a%10
            a /= 10
        }
    }
return m
}
print("tổng các chữ số là: \(tinhTong())")
