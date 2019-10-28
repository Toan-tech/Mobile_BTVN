print("Giải phương trình bậc 2: ax2 + bx + c = 0")


print("Nhập 3 số a, b, c")

func timX () {
    let a = Float(readLine()!)!
    let b = Float(readLine()!)!
    let c = Float(readLine()!)!
    if a == 0 {
        print("Nhập lại cả 3 số")
        timX()
    } else {
	 let delta = powf(b, 2) - 4*a*c
    if delta < 0 {
        print("Phương trình vô nghiệm")
    } else if delta == 0 {
        print("Phương trình có nghiệm duy nhất là: \(-(b/2*a))")
    } else {
        print("Phương trình có hai nghiệm là: \((-b-sqrtf(delta))/2*a) và \((-b+sqrtf(delta))/2*a)")
    }
}
}
timX()
