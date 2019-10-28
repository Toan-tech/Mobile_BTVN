print("""
Viết chương trình vẽ một tam giác cân bằng các dấu * với chiều cao nhập từ bàn phím (chiều cao lớn hơn 1)
    *
  * * *
* * * * *
""")

Cách1:
print("Nhập chiều cao tam giác: ")
func veTamGiac (){
    var a = Int(readLine()!)!
    if a <= 1 {
        print("Nhập lại chiều cao: ")
        veTamGiac()
    } else {
    for i in 0..<a {
var mang = [String](repeating: "*", count: 1 + i*2)
    for j in 0..<(a-i-1)*2 {
    mang.insert(" ", at:0)
}
    var k = 0
        while (k < (mang.count-1)) {
            if (mang[k] == mang[k+1] && mang[k] == "*"){
            mang.insert(" ", at: k+1)
            k += 1
            } else {
                k += 1
            }
        }
    print(mang.joined())
        }}}
veTamGiac()

Cách 2:
func veTamGiac() {
    print("Nhập chiều cao tam giác, chiều cao > 1: ")
    let h = Int(readLine()!)!
    
    for i in 0..<h {
        for j in 0..<2*h{
            if j >= (h-1-i) && j <= (h-1+i){
                print("*",terminator:"")
                
            } else {
                print(" ",terminator:"")
                
            }
        }
        print()
    }
    
}
veTamGiac()

Cách3:
func ve_tam_giac_can(N: Int) {
    for i in 0..<N {
        let space_str = String(repeating: "a", count: 2 * (N - i - 1))
        let star_str = String(repeating: "* ", count: 2 * i + 1)
        
        print(space_str + star_str)
    }
}
ve_tam_giac_can()
