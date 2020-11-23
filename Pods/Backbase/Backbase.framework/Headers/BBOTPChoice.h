// 
//  BBOTPChoice.h
//  Backbase
//
//  Created by Backbase B.V. on 21/05/2019.
//  Copyright © 2019 Backbase B.V. All rights reserved.
//
 

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

#ifndef BBOTPCHOICE_CLASS
#define BBOTPCHOICE_CLASS

@protocol BBOTPChoice <NSObject>
@end

@interface BBOTPChoice : NSObject
@property (strong, nonatomic, nonnull) NSString* address;
@property (strong, nonatomic, nonnull) NSString* channel;
@property (strong, nonatomic, nonnull) NSString* addressId;
@end

#endif

NS_ASSUME_NONNULL_END
