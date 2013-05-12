//
//  GQViewControllerTests.m
//  GQFlowController
//
//  Created by 钱国强 on 13-5-13.
//  Copyright (c) 2013年 gonefish@gmail.com. All rights reserved.
//

#import "GQViewControllerTests.h"

@implementation GQViewControllerTests

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
    
    self.viewController = [[GQViewController alloc] init];
    
    id connection = [OCMockObject mockForClass:[GQViewController class]];
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
    
    self.viewController = nil;
}

- (void)testActive
{
    [self.viewController setActive:YES];
    
    STAssertEquals([[self.viewController.view subviews] count], (NSUInteger)0, @"coverView don't add view");
    
    [self.viewController setActive:NO];
    
    STAssertEquals([[self.viewController.view subviews] count], (NSUInteger)1, @"coverView add view");
}

@end
