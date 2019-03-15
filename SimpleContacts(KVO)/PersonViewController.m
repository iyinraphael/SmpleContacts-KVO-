//
//  PersonViewController.m
//  SimpleContacts(KVO)
//
//  Created by Iyin Raphael on 3/14/19.
//  Copyright © 2019 Iyin Raphael. All rights reserved.
//

#import "PersonViewController.h"

@interface PersonViewController () <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UIButton *profilePictureButton;
@property (weak, nonatomic) IBOutlet UITextField *firstNameTextFIeld;
@property (weak, nonatomic) IBOutlet UITextField *lastNameTextField;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *saveButton;

@end

@implementation PersonViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)tappedSavedButton:(id)sender {
}
- (IBAction)chooseProfileButton:(id)sender {
}



@end
