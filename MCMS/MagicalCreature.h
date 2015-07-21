//
//  MagicalCreature.h
//  MCMS
//
//  Created by Bradley Justice on 7/21/15.
//  Copyright (c) 2015 Bradley Justice. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MagicalCreature : NSObject
@property NSString *name;
@property NSString *descriptionCreature;

-(instancetype)initWithName: (NSString *) name description: (NSString *) description;


@end
