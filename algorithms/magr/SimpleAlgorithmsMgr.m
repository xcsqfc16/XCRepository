//
//  HandSomeMgr.m
//  algorithms
//
//  Created by 肖超 on 2018/7/29.
//  Copyright © 2018年 com.XCSuperCompany. All rights reserved.
//

#import "SimpleAlgorithmsMgr.h"

@implementation SimpleAlgorithmsMgr

#pragma mark - 二分查找
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

#pragma mark - 选择排序
- (NSMutableArray *)selectionSortWithArray:(NSMutableArray *)array{
    NSMutableArray *sortArray = [NSMutableArray arrayWithCapacity:1];
    
    while (array.count) {
        NSUInteger minNum = [self findMinNumWithArray:array];
        [sortArray addObject:@(minNum)];
        [array removeObject:@(minNum)];
    }
    
    return sortArray;
}

#pragma mark - 寻找最小数
- (NSUInteger)findMinNumWithArray:(NSMutableArray *)array{
    NSUInteger minNum = [[array firstObject] integerValue];
    for (int i = 1; i<array.count; i++) {
        if ([[array objectAtIndex:i] integerValue] < minNum) {
            minNum = [[array objectAtIndex:i] integerValue];
        }
    }
    
    return minNum;
}

#pragma mark - 快速排序
- (NSMutableArray *)quickSortWithArray:(NSMutableArray<NSNumber *> *)array{
    NSMutableArray *resultArray = [NSMutableArray arrayWithCapacity:1];
    
    if (array.count <=1) {
        return array;
    }
    else{
        NSNumber *baseNum = [array objectAtIndex:0];
        NSMutableArray *lessArray = [NSMutableArray arrayWithCapacity:1];
        NSMutableArray *greaterArray = [NSMutableArray arrayWithCapacity:1];
        
        for (NSNumber *pNum in array) {
            if ([pNum integerValue] > [baseNum integerValue]) {
                [greaterArray addObject:pNum];
            }
            else if ([pNum integerValue] < [baseNum integerValue]){
                [lessArray addObject:pNum];
            }
        }
        NSMutableArray *lessSortArray = [self quickSortWithArray:lessArray];
        NSMutableArray *greaterSortArray = [self quickSortWithArray:greaterArray];
        [resultArray arrayByAddingObjectsFromArray:lessSortArray];
        [resultArray addObject:baseNum];
        [resultArray arrayByAddingObjectsFromArray:greaterSortArray];
        
        return resultArray;
    }
}

@end
