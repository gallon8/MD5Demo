//
//  MD5String.m
//  智慧社区
//
//  Created by gallon on 2019/10/16.
//  Copyright © 2017年 zhsq. All rights reserved.
//

#import "MD5String.h"
#import <CommonCrypto/CommonDigest.h>

@implementation MD5String
+(NSString *)md5:(NSString*)str
{
    const char *cStr = [str UTF8String];
    unsigned char result[16];
    unsigned int x=(int)strlen(cStr) ;
    CC_MD5(cStr,x,result);
    NSMutableString *output = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH * 2];
    
   for(int i = 0; i < 16; i++)
    [output appendFormat:@"%02x", result[i]];
    
     return  output;
}
@end
