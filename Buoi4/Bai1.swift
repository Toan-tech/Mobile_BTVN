Sắp xếp mảng số nguyên theo chiều tăng dần và giảm dần")

var mangSoNguyen: [Int] = [3, -6, 0, 3, 28, 900, -231, 654]
var a: Int!
var b: Int!
func sapXep () {
for i in 0..<(mangSoNguyen.count-1) {
    for i in 0..<(mangSoNguyen.count-1) {
        if mangSoNguyen[i] < mangSoNguyen[i+1] {
            a = mangSoNguyen[i]
            mangSoNguyen[i] = mangSoNguyen[i+1]
            mangSoNguyen[i+1] = a
        }
    }
}
    print("Mảng số sắp xếp theo chiều giảm dần là: \(mangSoNguyen)")
Cách 1:
for i in 0..<(mangSoNguyen.count-1) {
    for i in 0..<(mangSoNguyen.count-1) {
        if mangSoNguyen[i] > mangSoNguyen[i+1] {
            b = mangSoNguyen[i]
            mangSoNguyen[i] = mangSoNguyen[i+1]
            mangSoNguyen[i+1] = b
        }
    }
}
    print("Mảng số sắp xếp theo chiều tăng dần là: \(mangSoNguyen)")
}
sapXep()
Cách 2:
    var mang: [Int] = []
    for i in 1...mangSoNguyen.count {
        mang.insert(mangSoNguyen[i-1], at: 0)
    }
    print("Mảng số sắp xếp theo chiều tăng dần là: \(mang)")
}
sapXep(
