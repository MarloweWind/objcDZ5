//
//  Bird.m
//  objcDZ5
//
//  Created by Алексей Мальков on 25.10.2020.
//  Copyright © 2020 Alexey Malkov. All rights reserved.
//

#import "Bird.h"

@implementation Bird: NSObject

-(instancetype) initWithName:(NSString *)name {
    [super init];
    
    [name retain];
    [name release];
    
    _name = name;
        
    return self;
}

@end
