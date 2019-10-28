print("""
Nhập vào thời điểm T gồm 3 số theo dạng : “Giờ : Phút : Giây” và 1 số nguyên X <= 10000
- Hỏi sau X giây kể từ thời điểm T thì thời gian là bao nhiêu ?
- Hãy in ra theo dạng “Giờ : Phút : Giây”
""")

Cách 1:
func thoiGian(){
    print("Nhập thời điểm T dạng Giờ: phút: giây")
    print("Nhập Giờ:")
    var a = Int(readLine()!)!
    print("Nhập phút:")
    var b = Int(readLine()!)!
    while (b >= 60){
        print("Nhập lại phút:")
        b = Int(readLine()!)!
    }
    print("Nhập giây:")
    var c = Int(readLine()!)!
    while (c >= 60){
        print("Nhập lại giây:")
        c = Int(readLine()!)!
    }
    print("Thời gian T là: \(a) :\(b) :\(c)")
    print("Nhập khoảng thời gian:")
    var x = Int(readLine()!)!
    while (x > 10000){
        print("Nhập lại khoảng thời gian")
        x = Int(readLine()!)!
    }
    var d: Int
    var e: Int
    d = (x + c)/60
    e = (d + b)/60
    c = (x + c)%60
    b = (d + b)%60
    a = (a + e)%24
    print("Thời gian sau khoảng \(x) là: \(a) :\(b) :\(c)")
}
thoiGian()

Cách 2:
func congGiay()
{
    print("Nhap gio: ")
    var gio = Int(readLine()!)!
    print("Nhap phut: ")
    var phut = Int(readLine()!)!
    print("Nhap giay: ")
    var giay = Int(readLine()!)!
    print("Nhap so giay cong them: ")
    var x = Int(readLine()!)!
    
    print("Thời điểm ban đầu: \(gio) : \(phut) : \(giay) ")
    
    var tongGiay = gio*3600 + phut*60 + giay + x
    
    gio = tongGiay / 3600 // tính giờ
    tongGiay = tongGiay % 3600 // số giây còn lại sau khi tính giờ
    phut = tongGiay / 60 // tính phút
    giay = tongGiay % 60 // số giây còn lại
    
    if gio >= 24 {
        gio = gio - 24
        print("Thời điểm sau \(x) giây là: \(gio):\(phut):\(giay) ngày hôm sau")
    } else {
        print("Thời điểm sau \(x) giây là: \(gio):\(phut):\(giay)")
    }

}
congGiay()
