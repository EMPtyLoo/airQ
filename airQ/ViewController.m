//
//  ViewController.m
//  airQ
//
//  Created by EMPty on 12/22/15.
//  Copyright (c) 2015 EMPty. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSArray* _airQArray;
    NSArray* _airQLableColor;
    int _i;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    _i = 0;
    [super viewDidLoad];
    _airQArray = @[@"优",@"良",@"轻度",@"中度",@"重度",@"严重",@"爆表"];
    _airQLableColor = @[[UIColor greenColor],[UIColor yellowColor],[UIColor orangeColor],[UIColor redColor],[UIColor purpleColor],[UIColor brownColor],[UIColor blackColor]];
    [self getDate];
    [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(getDate) userInfo:nil repeats:YES];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)getDate
{
    NSDate *  senddate=[NSDate date];
    
    NSDateFormatter  *dateformatter=[[NSDateFormatter alloc] init];
    
    [dateformatter setDateFormat:@"yyyy mm dd vvvv EEEE HH:MM:SS"];
    
    NSString *  locationString=[dateformatter stringFromDate:senddate];
    
    _date.text = locationString;
    
    NSLog(@"locationString:%@",locationString);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)test:(id)sender {
    _Q.text = _airQArray[_i];
    if (_i >= 2) {
        _Q.font = [UIFont systemFontOfSize:12];
    }
    else         _Q.font = [UIFont systemFontOfSize:17];
    
    
    if (_i == 6) {
        _Q.textColor = [UIColor whiteColor];
    }
    else         _Q.textColor = [UIColor blackColor];


    _Q.backgroundColor = _airQLableColor[_i];
    ++_i;
    if (_i > _airQLableColor.count - 1) {
        _i = 0;
    }
}
@end
