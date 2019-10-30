print("""
In hình (nhập vào chiều cao của hình, với hình 2 thì chiều cao phải lẻ):
Hình 1:
*
**
***
****
*****
*****
****
***
**
*

Hình 2:

    *
   ***
  *****
 *******
*********
 *******
  *****
   ***
    *
""")

print("Nhập chiều cao hình 1")

func banThoi () {
    guard let a = Int(readLine()!) else {
        print("Nhập lại")
        return banThoi()
    }
    if a <= 0 {
        print("Nhập lại")
        return banThoi()
    }
    for i in 1...a {
        if i <= a/2 {
            for _ in 1...i {
                print("*" , terminator:"")
            }
            print("")
        } else {
            for _ in 1...(a-i+1) {
                print("*" , terminator: "")
            }
            print("")
        }
    }
}
banThoi()

print("Nhập chiều cao hình 2")

func thoi () {
    guard let b = Int(readLine()!) else {
        print("Nhập lại")
        return thoi()
    }
    if b < 0 || b%2 == 0 {
        print("Nhập lại")
        return thoi()
    }
    for i in 1...b {
        if i <= b/2 {
            for _ in 1...(b/2 - i + 1) {
                print(" ", terminator: "")
            }
            for _ in 1...(2*i - 1) {
                print("*", terminator: "")
            }
            print()
        } else {
            for _ in 0..<(i - b/2 - 1) {
                print(" ", terminator: "")
            }
            for _ in 1...(b - (i - b/2 - 1)*2) {
                print("*", terminator: "")
            }
            print()
        }
    }
}
thoi()
