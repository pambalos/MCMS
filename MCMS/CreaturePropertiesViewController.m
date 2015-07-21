//
//  CreaturePropertiesViewController.m
//  MCMS
//
//  Created by Bradley Justice on 7/21/15.
//  Copyright (c) 2015 Bradley Justice. All rights reserved.
//

#import "CreaturePropertiesViewController.h"


@interface CreaturePropertiesViewController ()
@property MagicalCreature *currentCreature;

@end

@implementation CreaturePropertiesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(self.selectedCreature.name);
    self.title = self.selectedCreature.name;
    
}



@end
