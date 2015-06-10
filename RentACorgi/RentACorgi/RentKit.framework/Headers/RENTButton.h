//
//  RENTButton.h
//  RentTheGown
//
//  Created by Billy Tobon on 5/27/15.
//  Copyright (c) 2015 Rent The Runway. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^completionBlock)(BOOL completed);


IB_DESIGNABLE
@interface RENTButton : UIControl

@property (nonatomic, nonnull, strong) IBInspectable NSString *title;

+ (nonnull instancetype)buttonWithSKU:(NSString * __nonnull)sku title:(NSString * __nonnull) title completionBlock:(completionBlock __nullable)block;
- (nonnull instancetype)initWithTitle:(NSString* __nonnull ) title;


@end
