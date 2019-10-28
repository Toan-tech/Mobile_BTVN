print("""
Hiển thị số ngày của tháng.
Với tháng 2 có 29 ngày nếu là năm nhuận, 28 ngày nếu là năm không nhuận
""")



print("Nhập năm")

func dateNumber () {
    let a = Int(readLine()!)!
    if a < 0 {
        print("Nhập lại năm")
        return dateNumber()
    }
        print("Nhập tháng")
    var b = 0
    func month () {
         b = Int(readLine()!)!
        if b < 1 || b > 12 {
            print("Nhập lại tháng")
            return month()
        }
    }
    month()
    var m = false
    if b == 1 || b == 3 || b == 5 || b == 7 || b == 8 || b == 10 || b == 12 {
        print("Tháng \(b) năm \(a) có 31 ngày")
    }
    if b == 4 || b == 6 || b == 9 || b == 11 {
        print("Tháng \(b) năm \(a) có 30 ngày")
    }
    if (a%4 == 0 && a%100 != 0) || a%400 == 0 {
        m = true
    }
    if b == 2 && m == true {
        print("Tháng \(b) năm \(a) có 29 ngày")
    } else if b == 2 && m == false {
        print("Tháng \(b) năm \(a) có 28 ngày")
    }
}
dateNumber()
