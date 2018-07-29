//
//  HandSomeMgr.m
//  algorithms
//
//  Created by 肖超 on 2018/7/29.
//  Copyright © 2018年 com.XCSuperCompany. All rights reserved.
//

#import "HandSomeMgr.h"

@implementation HandSomeMgr

- (NSUInteger)findNumFromArry:(NSArray<NSNumber *> *)arry targetNum:(int)targetNum{
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

@end
