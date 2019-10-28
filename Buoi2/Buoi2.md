# KIẾN THỨC TRÊN LỚP

## Github

- Đẩy code lên github
- Lấy code từ github về

## Học cú pháp Swift căn bản:

- Câu điều kiện, if let, guard let
- Vòng lặp: for, repeat while, while
- Câu điều kiện
- Vòng lặp
```
import Foundation

func forLoop(){
    for i in 0..<10{
        print(i)
    }
    
    for i in 10..<20{
        print(i, terminator: " ") // terminator huỷ bỏ chế độ tự động xuống dòng
    }
}

func whileLoop(){
    var i = 10
    
    while i > 0 {
        i = i - 1
        print(i)
    }
}

func repeatWhileLoop(){
    var i = 10
    repeat {
        i = i - 1
        print(i)
    } while i > 0
}
```
