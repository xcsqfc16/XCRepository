//
//  HandSomeMgr.h
//  algorithms
//
//  Created by 肖超 on 2018/7/29.
//  Copyright © 2018年 com.XCSuperCompany. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SimpleAlgorithmsMgr : NSObject


/**
 二分查找算法

 @param arry 查找数组
 @param targetNum 目标数字
 @return 目标数字在数字中的序列号
 */
- (NSUInteger)binaryFindIndexFromArry:(NSArray<NSNumber *> *)arry targetNum:(int)targetNum;

- (NSMutableArray *)selectionSortWithArray:(NSMutableArray *)array;

@end
