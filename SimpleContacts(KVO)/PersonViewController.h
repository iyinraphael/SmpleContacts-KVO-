//
//  PersonViewController.h
//  SimpleContacts(KVO)
//
//  Created by Iyin Raphael on 3/14/19.
//  Copyright © 2019 Iyin Raphael. All rights reserved.
//

#import <UIKit/UIKit.h>


@class Person;
NS_ASSUME_NONNULL_BEGIN

@interface PersonViewController : UIViewController

@property (nonatomic, nullable) Person *person;
@property (nonatomic, nullable) NSManagedObjectContext *managedObjectContext;

@end

NS_ASSUME_NONNULL_END
