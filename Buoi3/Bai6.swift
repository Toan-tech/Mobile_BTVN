print("Đưa ra: phần tử lớn nhất, phần tử bé nhất, trung bình cộng của một dãy số cho trước")

let daySo = [20.1, 3, -5.6, 7.8, 60.35, -2]
print("Cho dãy: 20.1, 3, -5.6, 7.8, 60.35, -2")
var a = daySo[0]
var b = daySo[0]
var c = Double(0)
func maxMinTbc (){
for i in daySo {
    if a > i {
        a = i
    }
    if b < i {
        b = i
    }
    c += i
    }
print("Phần tử nhỏ nhất là: \(a)")
print("Phần tử lớn nhất là: \(b)")
print("Trung bình cộng của dãy số là: \(c/Double(daySo.count))")
}
maxMinTbc()
