print("In ra họ và tên của một họ tên cho trước. (Ví dụ Phan Thanh Hoa -> In ra: Phan Hoa)")

print("Nhập họ và tên: ")
func hoTen () {
    var name = String(readLine()!)
    var mang = [String]()
    mang = name.components(separatedBy: " ")
    print("Tên rút gọn là: \(mang.first!) \(mang.last!)")
}
hoTen()
