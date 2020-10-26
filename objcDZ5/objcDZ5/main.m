//
//  main.m
//  objcDZ5
//
//  Created by Алексей Мальков on 25.10.2020.
//  Copyright © 2020 Alexey Malkov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Calculator.h"
#import "main.h"
#import "Bird.h"
#import "Flock.h"

void selectCalculatorOperation (Calculator *calc) {
    [calc retain];
    
    int menu_item = 0;
    
    printf("\nВыберете, что вы хотите сделать в введенными числами.");
    printf("\n___\n");
    printf(" 1: Сложение\n");
    printf(" 2: Вычитание\n");
    printf(" 3: Умножение\n");
    printf(" 4: Деление\n");
    printf(" 5: Среднее трёх чисел\n");
    printf("___\n");
    
    scanf("%int", &menu_item);
    
    switch (menu_item) {
        case opPlus:
        case opMinus:
        case opMultipy:
        case opDivide:
        case opAvg:
            calc.operations = [NSNumber numberWithInteger:menu_item];
            break;
        default: {
            selectCalculatorOperation(calc);
        }
        
    }
    
    [calc release];
}

void loadNumbers (Calculator *calc) {
    [calc retain];
    
    int first_entered = 0;
    int second_entered = 0;
    
    printf("\nВведите два числа.\n");
    printf("Первое: ");
    scanf("%i", &first_entered);
    
    if (first_entered > -1) {
        printf("Второе: ");
        scanf("%i", &second_entered);
        
        [calc initWithNumbersFirst:[NSNumber numberWithInt:first_entered] Second:[NSNumber numberWithInt:second_entered]];
    }
    
    [calc release];
}

void getMenu () {
    int operation = 0;
    
    printf("  1. Калькулятор\n");
    printf("  2. Птицы\n");
    
    printf("Выберите функцию:");
    
    scanf(" %i", &operation);
    
    if (operation == 1) {
        Calculator *calc = [Calculator new];
        loadNumbers(calc);
        
        [calc release];
        
        getMenu();
        
    } else if (operation == 2) {
        Bird *bird1 = [[Bird alloc] initWithName:@"Орёл"];
        Bird *bird2 = [[Bird alloc] initWithName:@"Дятел"];
        Bird *bird3 = [[Bird alloc] initWithName:@"Воробей"];
        Bird *bird4 = [[Bird alloc] initWithName:@"Ворон"];
        
        NSArray *birds = [NSArray arrayWithObjects:bird1, bird2, bird3, bird4, nil];
        
        Flock *flock = [[Flock alloc] configWithBirds:birds];
            
        NSLog(@"%@", flock);
        
        getMenu();
    } else if (operation != -1) {
        getMenu();
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        getMenu();
    }
    
    return 0;
}
