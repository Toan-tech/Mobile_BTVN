print("""
Vẽ tam giác cân ngược:

* * * * * * *
  * * * * *
    * * *
      *
""")

Cách 1:
func tamGiaccan () {
    print("Nhập chiều cao tam giác: ")
let a = Int(readLine()!)!
    for i in 1...a {
        var b: [String] = []
        for i in 0..<(i-1)*2 {
            b.append(" ")
        }
        for i in 0..<(2*a-2*i+1) {
            b.append("* ")
        }
        print(b.joined())
    }
}
tamGiaccan()

Cách 2:
func veTamGiacCanNguoc(){
    print("Nhập vào chiều cao của tam giác: ")
    let h = Int(readLine()!)!
    
    for i in 0..<h{
        for j in 0..<2*h-1{
            if i == j || (i <= 2*h - 2 - j && i < j){
                print("*", terminator: " ")
            }else{
                print(" ", terminator: " ")
            }
        }
        print()
    }
}
veTamGiacCanNguoc()
