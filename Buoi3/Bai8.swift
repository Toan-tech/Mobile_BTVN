print("""
Viết chương trình vẽ một chữ X bằng các dấu * với chiều cao nhập từ bàn phím (chiều cao lớn hơn 0 và là số lẻ)

*       *
 *     *
  *   *
    *
  *   *
 *     *
*       *
""")

print("Nhập chiều cao: ")

Cách1:
func veX(){
    var a = Int(readLine()!)!
    if a%2 == 0 || a < 0 {
        print("Nhập lại chiều cao: ")
        veX()
    } else if a == 1 {
            print("*")
        } else {
        for i in 1...(a/2) {
            var mang = [String](arrayLiteral: "*", "*") // var mang: [String] = ["*", "*"]
            for i in 1...(a-(i-1)*2) {
                mang.insert(" ", at: 1)
            }
            for i in 1..<i {
                mang.insert(" ", at: 0)
            }
                print(mang.joined())
        }
        var mang2: [String] = ["*"]
        for i in 0...a/2 {
            mang2.insert(" ", at: 0)
        }
        print(mang2.joined())
    for i in 1...(a/2) {
        var mang3 = [String](arrayLiteral: "*", "*")
        for i in 1...(i*2+1) {
            mang3.insert(" ", at: 1)
        }
        for i in 0..<(a/2-i){
            mang3.insert(" ", at: 0)
        }
        print(mang3.joined())
    }
}
}
veX()

Cách2:
func veChuX (){
    print("Nhập chiều cao h (h > 1 và h lẻ):")
    let h = Int(readLine()!)!
    
    if h < 0 || h % 2 == 0 {
        print("Chiều cao không hợp lệ")
        veChuX()
    } else {
        for i in 0..<h {
            for j in 0..<h {
                if i==j || i+j==h-1 {
                    print("*" , terminator:"")
                }
                else {
                    print(" ", terminator:"")
                }
            }
            print()
        }
    }
}
veChuX()
