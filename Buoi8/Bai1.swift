print("Sắp xếp mảng giảm dần sử dụng hàm sort()")

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
