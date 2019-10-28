print("Đảo kí tự từ viết thường thành hoa và ngược lại. Ví dụ: Hello --> hELLO")
func daoChuoi2() {
    print("Nhập vào chuỗi bất kì")
    let cau = String(readLine()!)
    var result = ""
    for i in cau {
        let s = String(i)
        let lowerCase = s.lowercased()
        let upperCase = s.uppercased()
        result += (s == lowerCase) ? upperCase : lowerCase // sử dụng toán tử 3 ngôi, cách viết gọn của hàm if bên dưới
        
//        if s == lowerCase {
//            result += upperCase
//        } else{
//            result += lowerCase
//        }
    }
    print("Câu sau khi đảo ngược kí tự: \(result) ")
    print()
}
daoChuoi2()
