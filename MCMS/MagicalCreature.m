//
//  MagicalCreature.m
//  MCMS
//
//  Created by Bradley Justice on 7/21/15.
//  Copyright (c) 2015 Bradley Justice. All rights reserved.
//

#import "MagicalCreature.h"

@implementation MagicalCreature

-(instancetype)initWithName: (NSString *) name description: (NSString *) description {
    if (self = [super init]) {
        _name = [name copy];
        _descriptionCreature = [description copy];
    }
    return self;
}


@end
