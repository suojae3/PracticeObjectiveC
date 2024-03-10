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

//member method -> GetterSetter를 자동적으로 만들어주어 노가다성 코딩 방지
// 프로퍼티 선언 때 아래와 같이 getter setter 구분 가능
@property int wheels;
@property int seats;


-(void)setWheels:(int)w Seats:(int)s;
-(void)drawCircleX:(int)x Y:(int)y R:(int)r;
-(void)drawCircleXYR :(int)x :(int)y :(int)r;
//-(void)setWheels: (int)w;
//-(void)setSeats: (int)s;
//-(int)wheels;
//-(int)seats;
-(void)print;

@end

NS_ASSUME_NONNULL_END
