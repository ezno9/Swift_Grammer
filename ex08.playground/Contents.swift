import UIKit
import Darwin

// 조건문 if문(80%) / switch문(20%)

// if문의 4가지 패턴
// 1. 단일(single) if문
if true { //소괄호가 없어짐. 중괄호 생략 불가
    //참일때 수행
}

// 2. if else
if false {
    // 참일때
} else{
    // 거짓일때
}


// 3. if else if문
if false {
    
} else if true {    // A조건이 아니고, B조건인가
    
} else {    // A조건도 아니고, B조건도 아닌 모든 경우
    
}

// 4. 중첩(duplicated) if문( if안의 if문, if in if)
// 3,4 depth 이상 권장하지 않음 => function으로 대체하는 것이 좋다.
if true{
    if false {
        
    } else {
        
    }
}




// 랜덤수(임의의 수) 발생
let randomNum: UInt32 = arc4random_uniform(100) // 0-99까지의 값을 랜덤수로 발생시킴.
// UInt32 -> Int 로 형변환
let intValue:Int = Int(randomNum)

// 로또 번호 1-45까지의 값에서 하나의 랜덤수 발생
let lottoNum: UInt32 = arc4random_uniform(45)+1 // 0~44 => 1~45




// switch case문
switch lottoNum { // 소괄호가 없어짐
    case 0:
        print("0")
    case 1...20:
        print("1~20")
    case 21...45:
        print("21~45")
    default:
        print("그 외의 값")
}


// 연습문제 - 5분정도 잠시멈춤
// 1부터 10사이의 랜덤수를 발생시키고
// if문을 이용하여 5보다 작으면 "5보다 작음" 출력하고
// 8보다 작으면 "8보다 작음" 출력하고,
// 그 외의 수이면 "그 외의 수"라고 출력하시오.
let lottoNum2 = arc4random_uniform(10)+1
if lottoNum2 < 5 {
    print("5보다 작음")
} else if lottoNum2 < 8 {
    print("8보다 작음")
} else {
    print("그 외의 수")
}

// switch case문 작성
switch lottoNum2 {
case 1...4 :
    print("5보다 작음")
case 5...7 :
    print("8보다 작음")
default:
    print("그 외의 수")
}





