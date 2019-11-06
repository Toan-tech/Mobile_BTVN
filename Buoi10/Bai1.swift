print("Nhập n, hiện dãy fibonaci từ 1 đến n")

print("Nhập n")
func fibonaci (){
    guard let n = Int(readLine()!) else {
        print("Nhập lại")
        return fibonaci()
    }
    if n < 2 {
        print("Nhập lại")
        return fibonaci()
    }
var array = [1,1]
for i in 2...n {
    var m = 0
    m = array[i-2] + array[i-1]
    array.append(m)
}
print("Dãy fibonaci là:")
for i in 0...n {
    if i < n {
    print(array[i], terminator: ",")
    } else {
        print(array[i])
    }
}
}
fibonaci()
