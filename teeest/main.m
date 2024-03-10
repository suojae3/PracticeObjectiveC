
// 찾는 위치가 달라짐
#import <Foundation/Foundation.h> // 애플 제공 라이브러리는 < >
#import "Vehicle.h" // 직접 만든 클래스는 ""


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //Vehicle *hello = [Vehicle new];
        //new -> 관례적으로 안씀 보통 alloc(동적할당) init(초기화) 메서드 체이닝으로 자주씀
        Vehicle *hello = [[Vehicle alloc] init]; // Create Instance Object
        
        //[Receiver Message]
        
        [hello setWheels:5];
        [hello setSeats:3];
        [hello drawCircleXYR:1 :2 :3];
        [hello drawCircleX:4 Y:5 R:6];
        hello.wheels = 4;
//        hello.seats = 2;
        
        //[hello print];
        NSLog(@"wheels: %i, seats: %i", hello.wheels, hello.seats);
    }
    return 0;
}

