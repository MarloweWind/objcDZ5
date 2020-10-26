//
//  Calculator.m
//  objcDZ5
//
//  Created by Алексей Мальков on 25.10.2020.
//  Copyright © 2020 Alexey Malkov. All rights reserved.
//

#import "Calculator.h"
#import "main.h"

@implementation Calculator: NSObject

-(void) initWithNumbersFirst:(NSNumber *) first Second:(NSNumber *) second {
    [super init];
    
    [first retain];
    [first release];
    _first = first;
    
    [second retain];
    [second release];
    _second = second;
    
    if ([_second intValue] > -1) {
        selectCalculatorOperation(self);
        
        [self doCalculate];
    }
}

-(void) doCalculate {
    switch ([self.operations intValue]) {
        case opPlus: {
            [self doPlusWithFirst:self.first Second:self.second];
            break;
        }
            
        case opMinus: {
            [self doMinusWithFirst:self.first Second:self.second];
            break;
        }
            
        case opMultipy: {
            [self doMultiplyWithFirst:self.first Second:self.second];
            break;
        }
            
        case opDivide: {
            if (self.second == 0) {
                printf("На ноль не делят");
            } else {
                [self doDevideWithFirst:self.first Second:self.second];
            }
            
            break;
        }
            
        case opAvg: {
            int third = 0;
            
            printf("Ещё одно число: ");
            scanf("%i", &third);
            
            [self doAvgWithFirst:self.first Second:self.second Third:[NSNumber numberWithInteger:third]];
            break;
        }
            
        case -1: {
            printf("Выход\n");
            break;
        }
            
        default:
            printf("Unknown operator");
            break;
    }

    if ([self.operations intValue] > -1) {
        loadNumbers(self);
    }
}

-(void)doPlusWithFirst:(NSNumber *) first Second:(NSNumber *) second {
    printf("Сумма двух чисел равна: %i\n", ([first intValue] + [second intValue]));
}

-(void)doMinusWithFirst:(NSNumber *) first Second:(NSNumber *) second {
    printf("Вычитание двух чисел равно: %i\n", ([first intValue] - [second intValue]));
}

-(void)doMultiplyWithFirst:(NSNumber *) first Second:(NSNumber *) second {
    printf("Умножение двух чичел равно: %i\n", ([first intValue] * [second intValue]));
}

-(void)doDevideWithFirst:(NSNumber *) first Second:(NSNumber *) second {
    printf("Деление двух чисел равно: %i\n", ([first intValue] / [second intValue]));
}

-(void)doAvgWithFirst:(NSNumber *) first Second:(NSNumber *) second Third:(NSNumber *) third {
    int avg = ([first intValue] + [second intValue] + [third intValue]) / 3;
    printf("Среднее трёх чисел равно: %i\n", avg);
}

- (void) dealloc {
    [super dealloc];
    printf("Калькулятор мёртв\n");
}

@end
