print("""
Vẽ hình chữ nhật rỗng:

* * * * * * *
*           *
*           *
* * * * * * *
""")

Cách 1:
func chuNhatRong () {
    print("Nhập cạnh thứ nhất: ")
    let a = Int(readLine()!)!
    print("Nhập cạnh thứ hai: ")
    let b = Int(readLine()!)!
    var c: [String] = []
    var d: [String] = ["*", " ", "*"]
    if a < 2 || b < 2 {
        print("Nhập lại")
        chuNhatRong()
    } else if a == 2 || b == 2 {
        for i in 1...a {
            c.append("* ")
        }
        for i in 1...b {
            print(c.joined())
        }
    } else {
        for i in 1...a {
            c.append("* ")
        }
        print(c.joined())
        for i in 2...(a-1) {
            d.insert("  ", at: 2)
        }
        for i in 2...(b-1) {
            print(d.joined())
        }
        print(c.joined())
    }
    }
chuNhatRong()

Cách 2:
func veHinhChuNhatRong(){
    print("Nhập vào chiều dài và chiều rộng: ")
    let m = Int(readLine()!)!
    let n = Int(readLine()!)!
    
    for i in 0..<m{
        switch i {
        case 0:
            for _ in 0..<n{
                print("*", terminator: " ")
            }
            print()  // dòng này để xuống dòng vì ở trên có terminator
        case 1..<m-1:
            for j in 0..<n{
                if j == 0 || j == n - 1{
                    print("*", terminator: " ")
                } else {
                    print(" ", terminator: " ")
                }
            }
            print() // dòng này để xuống dòng vì ở trên có terminator
        case m-1:
            for _ in 0..<n{
                print("*", terminator: " ")
            }
            print() // dòng này để xuống dòng vì ở trên có terminator
        default:
            return
        }
    }
}
veHinhChuNhatRong()
