import Foundation
import SwiftUI


//async -> 비동기 함수로 작동한다고 알려주고, 중단될 수 있다.
//await -> 비동기 함수의 중단되는 위치 표시


func someWork() async -> Int {
    
    try? await Task.sleep(nanoseconds: 1000 * 1000 * 1000 * 5)
    
    return 5
}

func simpleWork() {
    print("dddd" + "dddd" + "d d")
}

func start() {
    
    Task {
        print("start")
        let value = await someWork()
        print(value)
        print("finish")
        //xxx
        //xxx
    }
    
    simpleWork()
}


start()
