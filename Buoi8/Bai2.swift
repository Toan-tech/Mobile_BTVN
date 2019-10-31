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

Cách 1:
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

Cách 2:
func veHinhKhan(){
    print("Nhập vào số h: ")
    let h = Int(readLine()!)!
    
    for i in 0...h{
        if i < h/2{
            for _ in 0...i{
                print("*", terminator: "")
            }
            print()
        }
        
        if i > h/2{
            for _ in i...h{
                print("*", terminator: "")
            }
            print()
        }
    }
}

//veHinhKhan()

func veHinhThoi(){
    print("Nhập vào số h (h lẻ và h > 3): ")
    let h = Int(readLine()!)!
    if h%2 == 0 || h < 3{
        veHinhThoi()
        return
    }
    let n = h/2+1
    var range = 0
    for i in 1...h{
        for j in 1...h{
            if j >= n - range && j <= n + range{
                print("*", terminator: "")
            }else{
                print(" ", terminator: "")
            }
            
        }
        if i >= n {
            range -= 1
        }else{
            range += 1
        }
        print()
    }
    veHinhThoi()
}
