//
//  Calculator.h
//  objcDZ5
//
//  Created by Алексей Мальков on 25.10.2020.
//  Copyright © 2020 Alexey Malkov. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Calculator : NSObject

@property (nonatomic, strong) NSNumber *first;
@property (nonatomic, strong) NSNumber *second;
@property (nonatomic, strong) NSNumber *operations;

enum OperationType {
    opPlus = 1,
    opMinus = 2,
    opMultipy = 3,
    opDivide = 4,
    opAvg = 5
};

typedef NSInteger OperationType;

- (void)initWithNumbersFirst:(NSNumber *) first Second:(NSNumber *) second;
- (void)doPlusWithFirst:(NSNumber *) first Second:(NSNumber *) second;
- (void)doMinusWithFirst:(NSNumber *) first Second:(NSNumber *) second;
- (void)doMultiplyWithFirst:(NSNumber *) first Second:(NSNumber *) second;
- (void)doDevideWithFirst:(NSNumber *) first Second:(NSNumber *) second;
- (void)doAvgWithFirst:(NSNumber *) first Second:(NSNumber *) second Third:(NSNumber *) third;

@end

NS_ASSUME_NONNULL_END
