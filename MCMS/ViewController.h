//
//  ViewController.h
//  MCMS
//
//  Created by Bradley Justice on 7/21/15.
//  Copyright (c) 2015 Bradley Justice. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MagicalCreature.h"
#import "CreaturePropertiesViewController.h"

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
@property NSMutableArray *creatures;


@end

