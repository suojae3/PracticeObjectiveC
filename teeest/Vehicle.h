/*
SomeClass *object = [[SomeClass alloc] init];
 
 - (instancetype)init {
     if (self = [super init]) {
         // Initialize self
     }
     return self;
 }

 */


#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Vehicle : NSObject {
    int wheels;
    int seats;
}

@property int wheels;
@property int seats;


-(void)setWheels:(int)w setSeats:(int)s;

-(void)print;

@end

NS_ASSUME_NONNULL_END
