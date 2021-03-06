//
//  algorithmsTests.m
//  algorithmsTests
//
//  Created by 肖超 on 2018/7/29.
//  Copyright © 2018年 com.XCSuperCompany. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "SimpleAlgorithmsMgr.h"

@interface algorithmsTests : XCTestCase
@property(nonatomic,strong) SimpleAlgorithmsMgr *handsomeMgr;

@end

@implementation algorithmsTests

- (void)setUp {
    [super setUp];
    _handsomeMgr = [[SimpleAlgorithmsMgr alloc] init];
}

- (void)tearDown {
    NSLog(@"测试结束");
    [super tearDown];
}

- (void)testExample {
    
    NSArray *arry = [NSArray arrayWithObjects:@1,@2,@3,@4,@5,@6,@7,@8,@9,@10,@11,@12, nil];
    int targetNum = 7;
    NSUInteger result = [_handsomeMgr binaryFindIndexFromArry:arry targetNum:targetNum];
    
    XCTAssert(result == targetNum-1,@"查找错误❌");
}

- (void)testFinNumByMid {
    
    NSArray *arry = [NSArray arrayWithObjects:@1,@2,@3,@4,@5,@6,@7,@8,@9,@10,@11,@12, nil];
    int targetNum = 9;
    NSUInteger result = [_handsomeMgr binaryFindIndexFromArry:arry targetNum:targetNum];
    
    XCTAssert(result == targetNum-1,@"查找错误❌");
}

- (void)testSortMinArray {
    
    NSMutableArray *arry = [NSMutableArray arrayWithObjects:@5,@12,@3,@4,@11,@6,@7,@9,@8,@10,@1,@2, nil];
    
    NSMutableArray *sortArray = [_handsomeMgr selectionSortWithArray:(NSMutableArray *)arry];
    
    XCTAssert(sortArray,@"查找错误❌");
}

- (void)testQiuckSortMinArray{
    NSMutableArray *arry = [NSMutableArray arrayWithObjects:@5,@12,@3,@4,@11,@6,@7,@9,@8,@10,@1,@2, nil];
    
    NSMutableArray *sortArray = [_handsomeMgr quickSortWithArray:(NSMutableArray *)arry];
    
    XCTAssert(sortArray,@"查找错误❌");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
