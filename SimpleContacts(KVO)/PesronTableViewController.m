//
//  PesronTableViewController.m
//  SimpleContacts(KVO)
//
//  Created by Iyin Raphael on 3/14/19.
//  Copyright © 2019 Iyin Raphael. All rights reserved.
//

#import "PesronTableViewController.h"
#import "ModelController.h"
#import "PesronTableViewCell.h"

@interface PesronTableViewController () <NSFetchedResultsControllerDelegate>


@end

@implementation PesronTableViewController {
    ModelController *model;
    NSFetchedResultsController<Person *> *_frc;
    NSPersonNameComponentsFormatter *_nameFormater;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    _nameFormater = [[NSPersonNameComponentsFormatter alloc] init];
    model = [[ModelController alloc] init];
    _frc = [model makeNewPeopleFetchedResultsController];
    _frc.delegate = self;
    

}

#pragma mark - Table view data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _frc.sections[section].numberOfObjects;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    PesronTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PersonCell" forIndexPath:indexPath];
    Person *p = _frc.sections[indexPath.section].objects[indexPath.row];
    NSPersonNameComponents *nameComponents =  [[NSPersonNameComponents alloc] init];
    nameComponents.givenName = p.firstName;
    nameComponents.familyName = p.lastName;
    
    cell.nameLabel.text = [_nameFormater stringFromPersonNameComponents:nameComponents];
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
