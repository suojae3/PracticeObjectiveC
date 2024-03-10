
#import <Foundation/Foundation.h>

/*
SomeClass *object = [[SomeClass alloc] init];
 
 - (instancetype)init {
     if (self = [super init]) {
         // Initialize self
     }
     return self;
 }

 */

@interface Vehicle : NSObject {
    int wheels;
    int seats;
}

//member method -> GetterSetter를 자동적으로 만들어주어 노가다성 코딩 방지
// 프로퍼티 선언 때 아래와 같이 getter setter 구분 가능
@property (getter = getWheels, setter = wheels:) int wheels;
@property int seats;

//-(void)setWheels: (int)w;
//-(void)setSeats: (int)s;
//-(int)wheels;
//-(int)seats;
-(void)print;
@end

@implementation Vehicle
@synthesize wheels;
@synthesize seats;

//-(void)setWheels: (int)w {
//    wheels= w;
//}
//-(void)setSeats: (int)s {
//    seats= s;
//}

-(int)wheels {
    return wheels;
}

-(int)seats {
    return seats;
}

-(void)print {
    NSLog(@"wheels: %i, seats: %i", wheels, seats);
}
@end



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //Vehicle *hello = [Vehicle new];
        //new -> 관례적으로 안씀 보통 alloc(동적할당) init(초기화) 메서드 체이닝으로 자주씀
        Vehicle *hello = [[Vehicle alloc] init]; // Create Instance Object
        
        //[Receiver Message]
        
        [hello wheels:5];
        [hello setSeats:3];
        hello.wheels = 4;
        hello.seats = 2;
        
        //[hello print];
        NSLog(@"wheels: %i, seats: %i", [hello wheels],[hello seats]);
    }
    return 0;
}

