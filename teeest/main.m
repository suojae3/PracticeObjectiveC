
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
    int wheels2;
    int seats2;
}

-(void)setWheels: (int)w;
-(void)setSeats: (int)s;
-(int)wheels;
-(int)seats;
-(void)print;
@end

@implementation Vehicle

-(void)setWheels: (int)w {
    wheels2 = w;
}
-(void)setSeats: (int)s {
    seats2 = s;
}

-(int)wheels {
    return wheels2;
}

-(int)seats {
    return seats2;
    
}
-(void)print {
    NSLog(@"wheels: %i, seats: %i", wheels2, seats2);
}
@end



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //Vehicle *hello = [Vehicle new];
        //new -> 관례적으로 안씀 보통 alloc(동적할당) init(초기화) 메서드 체이닝으로 자주씀
        Vehicle *hello = [[Vehicle alloc]init]; // Create Instance Object
        
        //[Receiver Message]
        [hello setWheels:5];
        [hello setSeats:3];
        
        //[hello print];
        NSLog(@"wheels: %i, seats: %i", [hello wheels],[hello seats]);
    }
    return 0;
}

