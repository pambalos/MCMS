//
//  CreaturePropertiesViewController.m
//  MCMS
//
//  Created by Bradley Justice on 7/21/15.
//  Copyright (c) 2015 Bradley Justice. All rights reserved.
//

#import "CreaturePropertiesViewController.h"


@interface CreaturePropertiesViewController ()
@property (weak, nonatomic) IBOutlet UILabel *creatureNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *creatureDescriptionLabel;
@property (weak, nonatomic) IBOutlet UITextField *creatureNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *creatureDescriptionTextField;
@property (weak, nonatomic) IBOutlet UIImageView *creatureImageView;

@property MagicalCreature *currentCreature;
@end

@implementation CreaturePropertiesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = self.selectedCreature.name;
    self.navigationItem.rightBarButtonItem = [self editButtonItem];
    self.creatureImageView.image = [UIImage imageNamed:self.selectedCreature.imageName];
    [self hideInputs];
    [self updateLabels];
}

-(void)hideInputs {
    [self.creatureDescriptionTextField setHidden:YES];
    [self.creatureNameTextField setHidden:YES];
}

-(void)showInputs {
    [self.creatureDescriptionTextField setHidden:NO];
    [self.creatureNameTextField setHidden:NO];
    self.creatureNameTextField.text = self.selectedCreature.name;
    self.creatureDescriptionTextField.text = self.selectedCreature.descriptionCreature;
}

- (void)setEditing:(BOOL)flag animated:(BOOL)animated
{
    [super setEditing:flag animated:animated];
    if (flag == YES){
        [self showInputs];
    
    }
    else {
        [self hideInputs];
        [self updateSelectedCreature];
        [self updateLabels];
    }
}
- (IBAction)onFightButtonPressed:(UIButton *)sender {
    UIImage
}

-(void)updateLabels {
    self.creatureNameLabel.text = self.selectedCreature.name;
    self.creatureDescriptionLabel.text = self.selectedCreature.descriptionCreature;
}

-(void) updateSelectedCreature {
    self.selectedCreature.name = self.creatureNameTextField.text;
    self.selectedCreature.descriptionCreature = self.creatureDescriptionTextField.text;
}

@end
