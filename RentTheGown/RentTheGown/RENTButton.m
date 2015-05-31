//
//  RENTButton.m
//  RentTheGown
//
//  Created by Billy Tobon on 5/27/15.
//  Copyright (c) 2015 Rent The Runway. All rights reserved.
//

#import "RENTButton.h"
#import "RENTButtonStyle.h"

@interface  RENTButton ()

@property (nonatomic) BOOL rentCompleted;
@property (nonatomic, copy) NSString *SKU;
@property (nonatomic, copy) void (^completionBlock)(BOOL completed);


@end


@implementation RENTButton

//- (instancetype)initWithFrame:(CGRect)frame
//{
//    self = [super initWithFrame:frame];
//    if (self) {
//        
//    }
//    return self;
//}


- (instancetype)initWithTitle:(NSString* __nonnull) title {

    self = [super init];
    if (self) {
        _title = title;
        _rentCompleted = NO;
    }
    return self;
}

+ (nonnull instancetype)buttonWithSKU:(NSString * __nonnull)sku title:(NSString * __nonnull) title completionBlock:(completionBlock __nullable)block{


    RENTButton *button = [[RENTButton alloc] initWithTitle:title];
//    RENTButton *button = [[RENTButton alloc] init];

    button.backgroundColor = [UIColor whiteColor];
    [button addTarget:button action:@selector(rentItem:) forControlEvents:UIControlEventTouchUpInside];

    button.SKU = sku;
    
    if (block) {
        button.completionBlock = block;
    }
    
    return button;

}


- (void) drawRect:(CGRect)rect {

    [RENTButtonStyle drawRentButonWithLabel:_title isHighlighted:_rentCompleted];

}


-(void) prepareForInterfaceBuilder{

    [super prepareForInterfaceBuilder];
    _title = @"Tap me";
}

- (void)rentItem:(id) sender {
    
    [NSTimer scheduledTimerWithTimeInterval:1.0
                                     target:self
                                   selector:@selector(fakeRentCompleted)
                                   userInfo:nil
                                    repeats:NO];
    

    _title = @"Renting...";
    [self setNeedsDisplay];
    
}

- (void) setTitle:(NSString * __nonnull)title {

    _title = title;
    [self setNeedsDisplay];
}

- (void) fakeRentCompleted {
    
    _rentCompleted = YES;
    self.title = @"Rented";
    
    if (self.completionBlock) {
        
        self.completionBlock(YES);

    }
}

@end
