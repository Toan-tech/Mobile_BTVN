print("""
Viết hàm cho phép người dùng chọn đáp án Question: Đâu không phải là một ngôn ngữ lập trình? a - Golang b - Swift c - Ruby d - Daily

Cho người dùng chọn a, b, c, d để trả lời! Yêu cầu người dùng chọn lại đáp án nếu input không đúng, (không đúng nếu input khác a, b, c, d) In ra trả lời sai nếu đáp án không đúng In ra trả lời đúng nếu đáp án đúng
""")

print("""
Chọn đáp án đúng
Đâu không phải một ngôn ngữ lập trình?
a. Golang
b. Swift
c. Ruby
d. Daily
""")
print("Nhập đáp án:")
func dapAn (){
    var x = String(readLine()!)
    if x != "a" && x != "b" && x != "c" && x != "d" {
        print("Nhập lại đáp án:")
        dapAn()
    } else {
      let a = String("Golang")
        let b = String("Swift")
        let c = String("Ruby")
        let d = String("Daily")
        x == "a" ? x = a : (x == "b") ? (x = b) : (x == "c") ? (x = c) : (x == "d") ? (x = d) : (x = x)
        x == a || x == b || x == c ? print("\(x) là đáp án sai"): print("\(x) là đáp án đúng")
    }
}
dapAn()
