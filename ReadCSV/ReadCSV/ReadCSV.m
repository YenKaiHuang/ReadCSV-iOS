//
//  ReadCSV.m
//  ReadCSV
//
//  Created by yenkai huang on 2015/5/14.
//  Copyright (c) 2015年 yenkai huang. All rights reserved.
//

#import "ReadCSV.h"

#define columnA @"name"
#define columnB @"number"

@implementation ReadCSV


+ (NSArray *) readCSVwithFileName:(NSString *)fileName{
    NSMutableArray *tempArray=[[NSMutableArray alloc] init];
    NSString *csvString = [NSString stringWithContentsOfFile:[[NSBundle mainBundle] pathForResource:fileName ofType:@"csv"] encoding:NSUTF8StringEncoding error:nil];
    NSArray *csvArray = [csvString componentsSeparatedByCharactersInSet:[NSCharacterSet newlineCharacterSet]];
    for (int i = 0; i < csvArray.count; i ++) {
        NSString *lineString = [csvArray objectAtIndex:i];
        NSArray *itemArray = [lineString componentsSeparatedByString:@","];
        NSDictionary *itemDic = [[NSDictionary alloc] initWithObjectsAndKeys:[itemArray objectAtIndex:0], columnA, [itemArray objectAtIndex:1], columnB, nil];
        [tempArray addObject:itemDic];
    }
    return [NSArray arrayWithArray:tempArray];
}

@end
