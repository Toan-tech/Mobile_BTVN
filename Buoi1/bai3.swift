print("Bai 3")
print("Nhập số nguyên tố n")
print("+ n có là số nguyên dương không")
print("+ n có là số chắn không")
print("+ n có chia hết cho 5 không")
print("+ n có là số nguyên tố không")

print("Nhập n:")
var n: Int = Int(readLine()!)!
if n > 0 {
    print("\(n) là số nguyên dương")
} else {
    print("\(n) không là số nguyên dương")
}

if n % 2 == 0 {
    print("\(n) là số chẵn")
} else {
    print("\(n) không là số chẵn")
}

if n % 5 == 0 {
    print("\(n) chia hết cho 5")
} else {
    print("\(n) không chia hết cho 5")
}

var x = 1
var y: Int
if n <= 1 {
    print("\(n) không là số nguyên tố")
} else {
    repeat {
        x = x + 1
        y = n % x
    } while (y > 0)
if x == n {
    print("\(n) là số nguyên tố")
} else {
    print("\(n) không là số nguyên tố")
}
}


//Chữa phần số nguyên tố
// kiem tra so nguyen to
func soNguyenTo(){
    print("Nhap vao so n: ")
    let n = Int(readLine()!)!
    
    isSoNguyenTo(n: n)
}

func isSoNguyenTo(n: Int){
    var demUocSo = 0
    if n < 2{
        print("\(n) khong phai la so nguyen to")
    } else {
        for i in 2...Int(sqrt(Double(n))){
            if n % i == 0{
                demUocSo += 1
                break
            }
        }
        if demUocSo == 0 {
            print("\(n) la so nguyen to")
        } else {
            print("\(n) khong phai la so nguyen to")
        }
    }
}
soNguyenTo()
