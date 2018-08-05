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


/**
 选择排序（从小到大排序）

 @param array 需要排序的数组
 @return 排序完成的数组
 */
- (NSMutableArray *)selectionSortWithArray:(NSMutableArray *)array;

@end
