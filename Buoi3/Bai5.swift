print("In một chuỗi cho trước theo thứ tự ngược lại (Ví dụ: Hello in thành olleH)")

Tự làm:
let chuoi: String = "Xcode11"
print("Cho chuỗi: Xcode11")
var taoMang: [String] = []
func vietNguoc(){
    for i in chuoi {
    taoMang.insert(String(i), at:0)
}
    print("Chuỗi viết ngược là: \(taoMang.joined())")
   
}
vietNguoc()

Chữa:
func daoMotChuoi (){
    let chuoi = "Hoa Phuong Do"
    var daoChuoi: [Character] = []
//    Cách 1:
    for i in chuoi{
        daoChuoi.insert(i, at: 0)
    }
print(String(daoChuoi))
}
daoMotChuoi()
// cách 2
var chuoiB = String() //khai báo chuỗi rỗng
// duyệt kí tự của một chuỗi string
for i in chuoi {
    chuoiB = String(i) + chuoiB
    print("chuoiB: --> \(chuoiB)")
}
print(chuoiB)
}
daoMotChuoi()

