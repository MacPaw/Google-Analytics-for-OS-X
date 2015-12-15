//
//  ViewController.m
//  GoogleAnalyticsSample
//
//  Created by Denis Stas on 12/13/15.
//  Copyright © 2015 MacPaw Inc. All rights reserved.
//

#import "ViewController.h"

@import GoogleAnalyticsTracker;


@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    MPAnalyticsConfiguration *configuration = [[MPAnalyticsConfiguration alloc] initWithAnalyticsIdentifier:@"UA-TEST-X"];
    [MPGoogleAnalyticsTracker activateConfiguration:configuration];
    
    [MPGoogleAnalyticsTracker trackScreen:@"Main View"];
}

- (IBAction)trackEvent:(id)sender
{
    [MPGoogleAnalyticsTracker trackEventOfCategory:@"Interaction" action:@"Button Click"
                                             label:@"Track Event Button" value:@0];
}

- (IBAction)trackTiming:(id)sender
{
    [MPGoogleAnalyticsTracker trackTimingOfCategory:@"Timings" variable:@"App Launch Duration"
                                               time:@100 label:@""];
}

- (IBAction)showDebugWindow:(id)sender
{
    [MPAnalyticsDebugWindowController showWindow:sender];
}

@end
