//
//  Flock.h
//  objcDZ5
//
//  Created by Алексей Мальков on 25.10.2020.
//  Copyright © 2020 Alexey Malkov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Bird.h"

NS_ASSUME_NONNULL_BEGIN

@interface Flock : NSObject

@property (nonatomic, strong) NSArray *birds;

- (instancetype) configWithBirds: (NSArray *) aBirds;
- (void) removeAllBirds;
- (void) removeBirdAtIndex: (NSUInteger) idx;
- (NSString *) description;

@end

NS_ASSUME_NONNULL_END
