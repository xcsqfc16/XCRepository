//
//  HandSomeMgr.m
//  algorithms
//
//  Created by 肖超 on 2018/7/29.
//  Copyright © 2018年 com.XCSuperCompany. All rights reserved.
//

#import "SimpleAlgorithmsMgr.h"

@implementation SimpleAlgorithmsMgr

- (NSUInteger)binaryFindIndexFromArry:(NSArray<NSNumber *> *)arry targetNum:(int)targetNum{
    NSUInteger resultIndex = -1;
    
    int low = 0;
    int high = (int)arry.count -1;
    while (low <= high) {
        int mid = (low + high)/2;
        int guess = [[arry objectAtIndex:mid] intValue];
        
        if (targetNum < guess) {
            high = mid - 1;
        }
        else if (targetNum > guess){
            low = mid + 1;
        }
        else{
            resultIndex = mid;
            break;
        }
    }
    
    return resultIndex;
}

- (NSMutableArray *)selectionSortWithArray:(NSMutableArray *)array{
    NSMutableArray *sortArray = [NSMutableArray arrayWithCapacity:1];
    
    while (array.count) {
        NSUInteger minNum = [self findMinNumWithArray:array];
        [sortArray addObject:@(minNum)];
        [array removeObject:@(minNum)];
    }
    
    return sortArray;
}

- (NSUInteger)findMinNumWithArray:(NSMutableArray *)array{
    NSUInteger minNum = [[array firstObject] integerValue];
    for (int i = 1; i<array.count; i++) {
        if ([[array objectAtIndex:i] integerValue] < minNum) {
            minNum = [[array objectAtIndex:i] integerValue];
        }
    }
    
    return minNum;
}

@end
