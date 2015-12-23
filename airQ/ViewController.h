//
//  ViewController.h
//  airQ
//
//  Created by EMPty on 12/22/15.
//  Copyright (c) 2015 EMPty. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *date;
@property (weak, nonatomic) IBOutlet UILabel *place;
@property (weak, nonatomic) IBOutlet UILabel *airQ;
@property (weak, nonatomic) IBOutlet UILabel *Q;
- (IBAction)test:(id)sender;

@end

