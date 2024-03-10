
#import "Vehicle.h"

@implementation Vehicle
@synthesize wheels;
//@synthesize seats;

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

