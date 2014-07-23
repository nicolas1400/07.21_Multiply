//
//  ViewController.m
//  Multiply
//
//  Created by Nicolas on 7/21/14.
//  Copyright (c) 2014 Globant. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *myNumber;
@property (weak, nonatomic) IBOutlet UILabel *myMultiplier;
@property (weak, nonatomic) IBOutlet UILabel *myAnswer;

@property (strong, nonatomic) IBOutlet UISlider *mySlider;





@end



@implementation ViewController


- (IBAction) senderValueChanged:(UISlider *)sender {
    self.myMultiplier.text = [NSString stringWithFormat:@"%f", self.mySlider.value];
}




- (IBAction)onCalculateButtonPressed:(id)sender {
    

    
    int value = [self.myNumber.text intValue];
    
    int multiplier = [self.myMultiplier.text intValue];
    
    int total = value * multiplier;
    
    
    if (total>20) {
        
        self.view.backgroundColor = [UIColor greenColor];
    }
    if (total<20) {
        
        self.view.backgroundColor = [UIColor whiteColor];
    }
    
    if (!(total % 3)) {
        if (!(total % 5))
        { self.myAnswer.text=@"fizzbuzz"; return; };}
    

    if (!(total % 3)) { self.myAnswer.text=@"fizz"; return; };
    if (!(total % 5)) { self.myAnswer.text=@"buzz"; return; };
    
    
    self.myAnswer.text = [NSString stringWithFormat:@"%i", total];
    
    
    
}



- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
