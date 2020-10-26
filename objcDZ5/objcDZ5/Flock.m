//
//  Flock.m
//  objcDZ5
//
//  Created by Алексей Мальков on 25.10.2020.
//  Copyright © 2020 Alexey Malkov. All rights reserved.
//

#import "Flock.h"

@implementation Flock

- (instancetype) configWithBirds:(NSArray *) aBirds {
    [aBirds retain];
    [aBirds release];
    
    _birds = aBirds;
    
    return self;
}

- (void) removeAllBirds {
    for (Bird *bird in _birds) {
        [bird release];
    }
}

- (void) removeBirdAtIndex:(NSUInteger) idx {
    [[_birds objectAtIndex:idx] release];
}

- (NSString *) description {
    NSString *string = @"\n";
    
    for (Bird *bird in self.birds) {
        string = [string stringByAppendingFormat:@"Name: %@\n", bird.name];
    }
    
    return string;
}

@end
