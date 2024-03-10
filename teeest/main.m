
// 찾는 위치가 달라짐
#import <Foundation/Foundation.h> // 애플 제공 라이브러리는 < >
#import "Vehicle.h" // 직접 만든 클래스는 ""


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Vehicle *hello = [[Vehicle alloc] init];
        
        [hello setWheels:3 setSeats:3];
        
        if (hello.wheels == 4) {
            NSLog(@"wheels : 4");
        } else if(hello.wheels == 3) {
            NSLog(@"wheels : 3");
        } else {
            NSLog(@"No Wheels");
        }
        
        switch (hello.seats) {
            case 4:
                NSLog(@"wheels : 4");
                break;
            case 3:
                NSLog(@"wheels : 2");
                break;
            default:
                NSLog(@"No Seats");
                break;
        }
        
        for (int i=0; i<hello.wheels; i++) {
            NSLog(@"WheelsAdd: %i", i);
        }
    
        int i=0;
        while (i<hello.seats) {
            NSLog(@"seatsAdd: %i", i);
            i++;
        }
        
        
        hello.wheels = 2;
        hello.seats = 9;
        
        NSLog(@"wheels: %i, seats: %i", hello.wheels, hello.seats);
        
        // NSMutableString처럼 Mutable이 들어가 있으면 바꿀 수 있음
//        NSString *str = [[NSString alloc] initWithString:@"This is NSString"];
        NSString *str = @"This is NSString";
        
        // Conveninece method -> 동적할당하면서 초기화까지
        NSLog(@"str : %@", str);

        // NSString은 immutable 클래스라 수정할 수 없음 통째로 재할당만 가능
        NSString *result;
        result = [str substringFromIndex:6];
        result = [str substringToIndex:3];
        
        result = [[str substringToIndex:11]substringFromIndex:8];
        result = [[str substringFromIndex:8]substringToIndex:3];
        
        result = [[str substringWithRange:NSMakeRange(8, 3)]lowercaseString];
        NSLog(@"result : %@", result);
        
        NSMutableString *mstr = [NSMutableString stringWithString:str];
        [mstr appendString:@"and NSMutableString"];
        [mstr insertString:@"Mutable" atIndex:1];
                    
        NSLog(@"mstr: %@", mstr);
        
    }
    return 0;
}

