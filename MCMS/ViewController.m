//
//  ViewController.m
//  MCMS
//
//  Created by Bradley Justice on 7/21/15.
//  Copyright (c) 2015 Bradley Justice. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *creatureNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *creatureDescriptionTextField;
@property (weak, nonatomic) IBOutlet UITableView *creatureTableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.creatures = [NSMutableArray arrayWithObjects:
                      [[MagicalCreature new] initWithName:@"Galactic Being" description:@"A being who's self is galactical"],
                      [[MagicalCreature new] initWithName:@"Cosmic Zombie" description:@"A cosmic being with dead properties"],
                      [[MagicalCreature new] initWithName:@"Sentient Anti-Matter" description:@"A method for wholescale destruction"],
                      nil];

}

- (IBAction)onAddCreatureButtonPressed:(id)sender {

    MagicalCreature *newCreature = [[MagicalCreature new] initWithName:self.creatureNameTextField.text description:self.creatureDescriptionTextField.text];
    [self.creatures addObject:newCreature];
    [self.creatureTableView reloadData];
    [self.view endEditing:YES];
    self.creatureNameTextField.text = nil;
    self.creatureDescriptionTextField.text = nil;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    MagicalCreature *selectedCreature = [self.creatures objectAtIndex:[[self.creatureTableView indexPathForSelectedRow] row]];
    CreaturePropertiesViewController *destinationCreaturePage = segue.destinationViewController;
    destinationCreaturePage.selectedCreature = selectedCreature;
}


# pragma mark -table view methods
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.creatures count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *creatureCell = [tableView dequeueReusableCellWithIdentifier:@"creatureCellID"];
    MagicalCreature *creature = [self.creatures objectAtIndex:indexPath.row];
    creatureCell.textLabel.text = creature.name;
    creatureCell.detailTextLabel.text = creature.descriptionCreature;
    return creatureCell;
}

@end
