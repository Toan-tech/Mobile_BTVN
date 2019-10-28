print("""
Vẽ tam giác vuông:

*
* *
* * *
* * * *
* * * * *
""")

Cách 1:
func tamGiacVuong () {
    print("Nhập cạnh tam giác: ")
    let a = Int(readLine()!)!
    var b: [String] = []
    for i in 1...a {
        b.append("* ")
        print(b.joined())
    }
}
tamGiacVuong()

Cách 2:
func veTamGiacVuong(){
    print("Nhập vào chiều cao của tam giác: ")
    let h = Int(readLine()!)!
    
    for i in 0..<h{
        for _ in 0...i{
            print("*", terminator: " ")
        }
        print()
    }
}
veTamGiacVuong()
