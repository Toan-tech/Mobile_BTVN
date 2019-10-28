print("Đếm số nguyên tố trong đoạn [a, b]")

print("Nhập khoảng [a, b]")
func nguyenTo (){
    let a = Int(readLine()!)!
    let b = Int(readLine()!)!
    var n = 0
    if b < 1 || a > b {
        print("Nhập lại")
        return nguyenTo()
    }
    if a > 1 {
        for i in a...b {
            var m = true
            for j in 1...i/2 {
                if i%j == 0 && j != 1 {
                    m = false
                    break
                }
            }
            if m == true {
                n += 1
            }
        }
        print("Có \(n) số nguyên tố")
    } else {
        for i in 2...b {
            var m = true
            for j in 1...i/2 {
                if i%j == 0 && j != 1 {
                    m = false
                    break
                }
            }
            if m == true {
                n += 1
            }
        }
        print("Có \(n) số nguyên tố")
    }
}
nguyenTo()
