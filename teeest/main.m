
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
    }
    return 0;
}

