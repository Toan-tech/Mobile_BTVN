print("Sắp xếp mảng giảm dần sử dụng hàm sort()")

Cách 1:
print("Cho mảng")
var array: [Float] = [3, 9, 9.3, -5, 6.7, -5, 7.8, 0]
print(array)
print()
print("Mảng xếp theo thứ tự giảm dần là:")
var arrayminmax = array.sorted()

//mang.sorted() thì print được. Nhưng mang.reversed() thì ko print được. Muốn in ra phải dùng hàm for như ở dưới.
//print(array.sorted())

var arraymaxmin: [Float] = []
for i in arrayminmax.reversed() {
    arraymaxmin.append(i)
}
print(arraymaxmin)

Cách 2:
func mangGiamDan(){
    var arrays: [Int] = [3, 19, -4, 0, 84]
    arrays.sort() // sắp xếp tăng dần
    
    arrays.sort { (i: Int, j: Int) -> Bool in
        return i >= j // i>=j: sắp xếp giảm dần, i < j: sắp xếp tăng dần
    }
    
    print(arrays)
}
