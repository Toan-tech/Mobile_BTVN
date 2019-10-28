print("Liệt kê tất cả các ước của một số nguyên nhập từ bàn phím")

Cách 1:
print("Nhập số nguyên: ")
func uocSoNguyen () {
    var a = Int(readLine()!)!
    var b: Int!
    if a == 0 {
        print("a có vô số ước")
    } else if a == 1 || a == -1 {
print("Các ước của \(a) là: 1, -1")
} else {
        var mangUoc: [Int] = []
        a < 0 ? (b = -a) : (b = a)
        for i in 1...b/2 {
            if b%i == 0 {
                mangUoc.append(i)
                mangUoc.append(-i)
            }
        }
        mangUoc += [a, -a]
        print("Các ước của số nguyên \(a) là: ")
        for i in 0..<(mangUoc.count-1) {
            print(mangUoc[i], terminator: ", ")
        }
        print(mangUoc.last!)
    }
}
uocSoNguyen()


Cách 2:
// hàm in ra số hoàn hảo
func soHoanHao() {
    
    print("Nhập số: ")
    let n = Int(readLine()!)!
    
    while n < 2 || n > 32767 {
        soHoanHao()
    }
    
    for i in 6...n {
        if isSoHoanHao(i) {
            print("\(i)")
        }
    }
}

// hàm kiểm tra một số phải số hoàn hảo hay không
func isSoHoanHao(_ n: Int) -> Bool {
    var sum = 0
    for i in 1...n/2 {
        // tính tổng các ước
        if n % i == 0 {
            sum += i
        }
    }
    
//    if sum == n {
//        return true
//    } else {
//        return false
//    }
    
    return sum == n
}
soHoanHao()
