print("Tìm số lớn thứ 2 trong mảng số nguyên")

Cách 1:
var mangSoNguyen = [Int](arrayLiteral: 20, 30, -6, 31, 90, 26, -89, 5, -35, 100)
print("Cho mang so nguyen: 20, 30, -6, 31, 90, 26, -89, 5, -35, 100")
var a = mangSoNguyen[0]
var b = mangSoNguyen[0]

func maxThuHai(){
    for i in mangSoNguyen {
        if a < i {
            a = i
        }
    }
    for i in mangSoNguyen {
        if b < i && i != a {
            b = i
        }
    }
    print("Số lớn thứ hai là: \(b)")
}
maxThuHai()

Cách 2:
var mangSoNguyen = [Int](arrayLiteral: 20, 30, -6, 31, 90, 26, -89, 5, -35, 100)
print("Cho mang so nguyen: 20, 30, -6, 31, 90, 26, -89, 5, -35, 100")
var a = mangSoNguyen[0]
var b = mangSoNguyen[0]
func maxThuHai(){
    for i in 0..<mangSoNguyen.count {
        if a < mangSoNguyen[i] {
            a = mangSoNguyen[i]
        }
    }
    for i in 0..<mangSoNguyen.count {
        if mangSoNguyen[i] == a {
            mangSoNguyen.remove(at: i)
        }
    }
    for i in mangSoNguyen {
        if b < i {
            b = i
        }
    }
    print("Số lớn thứ hai là: \(b)")
}
maxThuHai()

Cách3:
func soLonThuHai(){
    let numbers: [Int] = [2, 8, 4, 10, 8, 9]
    
    var max1 = numbers[0] // số lớn thứ nhất
    var max2 = numbers[0] // số lớn thứ hai
    
    // cách 1
    for i in numbers{
        if max1 < i { // nếu số lớn thứ nhất không còn là số lớn thứ nhất (do nhỏ hơn i)
            max2 = max1 // thì số lớn thứ 2 được gán bằng số lớn thứ nhất
            max1 = i // số lớn thứ nhất được gán bằng i
        } else if max2 < i && i < max1{
            max2 = i
        }
    }
soLonThuHai()
