//
//  RENTButtonStyle.m
//  Frameworks demo
//
//  Created by Billy Tobon on 5/31/15.
//  Copyright (c) 2015 AltConf 2015. All rights reserved.
//
//  Generated by PaintCode (www.paintcodeapp.com)
//

#import "RENTButtonStyle.h"


@implementation RENTButtonStyle

#pragma mark Initialization

+ (void)initialize
{
}

#pragma mark Drawing Methods

+ (void)drawRentButonWithLabel: (NSString*)label isHighlighted: (BOOL)isHighlighted
{
    //// General Declarations
    CGContextRef context = UIGraphicsGetCurrentContext();

    //// Color Declarations
    UIColor* baseColor = [UIColor colorWithRed: 0.255 green: 0.608 blue: 0.976 alpha: 1];
    UIColor* highlightColor = [UIColor colorWithRed: 0.32 green: 0.8 blue: 0.339 alpha: 1];

    //// Variable Declarations
    UIColor* expression = isHighlighted ? highlightColor : baseColor;
    BOOL isNotHighlighted = isHighlighted ? NO : YES;

    //// Rectangle Drawing
    UIBezierPath* rectanglePath = [UIBezierPath bezierPathWithRoundedRect: CGRectMake(3, 4, 144, 34) cornerRadius: 5];
    [UIColor.whiteColor setFill];
    [rectanglePath fill];
    [expression setStroke];
    rectanglePath.lineWidth = 1.5;
    [rectanglePath stroke];


    //// ButtonLabel Drawing
    CGRect buttonLabelRect = CGRectMake(36, 10, 110, 22);
    NSMutableParagraphStyle* buttonLabelStyle = NSMutableParagraphStyle.defaultParagraphStyle.mutableCopy;
    buttonLabelStyle.alignment = NSTextAlignmentCenter;

    NSDictionary* buttonLabelFontAttributes = @{NSFontAttributeName: [UIFont boldSystemFontOfSize: UIFont.systemFontSize], NSForegroundColorAttributeName: expression, NSParagraphStyleAttributeName: buttonLabelStyle};

    CGFloat buttonLabelTextHeight = [label boundingRectWithSize: CGSizeMake(buttonLabelRect.size.width, INFINITY)  options: NSStringDrawingUsesLineFragmentOrigin attributes: buttonLabelFontAttributes context: nil].size.height;
    CGContextSaveGState(context);
    CGContextClipToRect(context, buttonLabelRect);
    [label drawInRect: CGRectMake(CGRectGetMinX(buttonLabelRect), CGRectGetMinY(buttonLabelRect) + (CGRectGetHeight(buttonLabelRect) - buttonLabelTextHeight) / 2, CGRectGetWidth(buttonLabelRect), buttonLabelTextHeight) withAttributes: buttonLabelFontAttributes];
    CGContextRestoreGState(context);


    if (isNotHighlighted)
    {
        //// Group 909-tags
        {
            //// _x39_09-tags_x40_2x.png
            {
                //// Group 3
                {
                    //// Bezier Drawing
                    UIBezierPath* bezierPath = UIBezierPath.bezierPath;
                    [bezierPath moveToPoint: CGPointMake(12.06, 19.97)];
                    [bezierPath addLineToPoint: CGPointMake(21.99, 9.17)];
                    [bezierPath addCurveToPoint: CGPointMake(22.59, 8.91) controlPoint1: CGPointMake(22.15, 8.99) controlPoint2: CGPointMake(22.37, 8.91)];
                    [bezierPath addLineToPoint: CGPointMake(22.59, 8.91)];
                    [bezierPath addLineToPoint: CGPointMake(30.69, 8.92)];
                    [bezierPath addLineToPoint: CGPointMake(32.11, 8.92)];
                    [bezierPath addCurveToPoint: CGPointMake(30.69, 8.02) controlPoint1: CGPointMake(31.83, 8.38) controlPoint2: CGPointMake(31.3, 8.02)];
                    [bezierPath addLineToPoint: CGPointMake(22.59, 8.02)];
                    [bezierPath addCurveToPoint: CGPointMake(21.41, 8.54) controlPoint1: CGPointMake(22.16, 8.02) controlPoint2: CGPointMake(21.73, 8.19)];
                    [bezierPath addLineToPoint: CGPointMake(11.48, 19.34)];
                    [bezierPath addCurveToPoint: CGPointMake(11.48, 21.86) controlPoint1: CGPointMake(10.84, 20.04) controlPoint2: CGPointMake(10.84, 21.17)];
                    [bezierPath addLineToPoint: CGPointMake(11.88, 22.3)];
                    [bezierPath addCurveToPoint: CGPointMake(12.1, 21.27) controlPoint1: CGPointMake(11.92, 21.94) controlPoint2: CGPointMake(11.99, 21.57)];
                    [bezierPath addLineToPoint: CGPointMake(12.06, 21.23)];
                    [bezierPath addCurveToPoint: CGPointMake(12.06, 19.97) controlPoint1: CGPointMake(11.74, 20.88) controlPoint2: CGPointMake(11.74, 20.32)];
                    [bezierPath closePath];
                    [bezierPath moveToPoint: CGPointMake(29.45, 12.48)];
                    [bezierPath addCurveToPoint: CGPointMake(27.4, 14.71) controlPoint1: CGPointMake(28.32, 12.48) controlPoint2: CGPointMake(27.4, 13.48)];
                    [bezierPath addCurveToPoint: CGPointMake(29.45, 16.94) controlPoint1: CGPointMake(27.4, 15.95) controlPoint2: CGPointMake(28.32, 16.94)];
                    [bezierPath addCurveToPoint: CGPointMake(31.5, 14.71) controlPoint1: CGPointMake(30.58, 16.94) controlPoint2: CGPointMake(31.5, 15.95)];
                    [bezierPath addCurveToPoint: CGPointMake(29.45, 12.48) controlPoint1: CGPointMake(31.5, 13.48) controlPoint2: CGPointMake(30.58, 12.48)];
                    [bezierPath closePath];
                    [bezierPath moveToPoint: CGPointMake(29.45, 16.05)];
                    [bezierPath addCurveToPoint: CGPointMake(28.22, 14.71) controlPoint1: CGPointMake(28.77, 16.05) controlPoint2: CGPointMake(28.22, 15.45)];
                    [bezierPath addCurveToPoint: CGPointMake(29.45, 13.38) controlPoint1: CGPointMake(28.22, 13.97) controlPoint2: CGPointMake(28.77, 13.38)];
                    [bezierPath addCurveToPoint: CGPointMake(30.68, 14.71) controlPoint1: CGPointMake(30.13, 13.38) controlPoint2: CGPointMake(30.68, 13.97)];
                    [bezierPath addCurveToPoint: CGPointMake(29.45, 16.05) controlPoint1: CGPointMake(30.68, 15.45) controlPoint2: CGPointMake(30.13, 16.05)];
                    [bezierPath closePath];
                    [bezierPath moveToPoint: CGPointMake(32.33, 9.81)];
                    [bezierPath addLineToPoint: CGPointMake(24.23, 9.81)];
                    [bezierPath addCurveToPoint: CGPointMake(23.05, 10.32) controlPoint1: CGPointMake(23.8, 9.8) controlPoint2: CGPointMake(23.38, 9.97)];
                    [bezierPath addLineToPoint: CGPointMake(13.12, 21.13)];
                    [bezierPath addCurveToPoint: CGPointMake(13.12, 23.65) controlPoint1: CGPointMake(12.48, 21.82) controlPoint2: CGPointMake(12.48, 22.95)];
                    [bezierPath addLineToPoint: CGPointMake(21.24, 32.48)];
                    [bezierPath addCurveToPoint: CGPointMake(23.56, 32.48) controlPoint1: CGPointMake(21.88, 33.18) controlPoint2: CGPointMake(22.92, 33.18)];
                    [bezierPath addLineToPoint: CGPointMake(33.49, 21.68)];
                    [bezierPath addCurveToPoint: CGPointMake(33.95, 20.41) controlPoint1: CGPointMake(33.81, 21.33) controlPoint2: CGPointMake(33.96, 20.87)];
                    [bezierPath addLineToPoint: CGPointMake(33.96, 20.41)];
                    [bezierPath addLineToPoint: CGPointMake(33.97, 11.59)];
                    [bezierPath addCurveToPoint: CGPointMake(32.33, 9.81) controlPoint1: CGPointMake(33.97, 10.6) controlPoint2: CGPointMake(33.25, 9.81)];
                    [bezierPath closePath];
                    [bezierPath moveToPoint: CGPointMake(33.15, 20.42)];
                    [bezierPath addLineToPoint: CGPointMake(33.15, 20.42)];
                    [bezierPath addCurveToPoint: CGPointMake(32.91, 21.05) controlPoint1: CGPointMake(33.15, 20.64) controlPoint2: CGPointMake(33.07, 20.87)];
                    [bezierPath addLineToPoint: CGPointMake(22.98, 31.85)];
                    [bezierPath addCurveToPoint: CGPointMake(21.82, 31.85) controlPoint1: CGPointMake(22.66, 32.2) controlPoint2: CGPointMake(22.14, 32.2)];
                    [bezierPath addLineToPoint: CGPointMake(13.7, 23.02)];
                    [bezierPath addCurveToPoint: CGPointMake(13.7, 21.76) controlPoint1: CGPointMake(13.38, 22.67) controlPoint2: CGPointMake(13.38, 22.1)];
                    [bezierPath addLineToPoint: CGPointMake(23.63, 10.95)];
                    [bezierPath addCurveToPoint: CGPointMake(24.23, 10.7) controlPoint1: CGPointMake(23.79, 10.78) controlPoint2: CGPointMake(24.01, 10.69)];
                    [bezierPath addLineToPoint: CGPointMake(24.23, 10.7)];
                    [bezierPath addLineToPoint: CGPointMake(32.33, 10.7)];
                    [bezierPath addCurveToPoint: CGPointMake(33.15, 11.59) controlPoint1: CGPointMake(32.79, 10.7) controlPoint2: CGPointMake(33.15, 11.1)];
                    [bezierPath addLineToPoint: CGPointMake(33.15, 20.42)];
                    [bezierPath addLineToPoint: CGPointMake(33.15, 20.42)];
                    [bezierPath closePath];
                    bezierPath.miterLimit = 4;

                    [expression setFill];
                    [bezierPath fill];
                }
            }


            //// Group 4
            {
            }


            //// Group 5
            {
            }


            //// Group 6
            {
            }


            //// Group 7
            {
            }


            //// Group 8
            {
            }


            //// Group 9
            {
            }


            //// Group 10
            {
            }


            //// Group 11
            {
            }


            //// Group 12
            {
            }


            //// Group 13
            {
            }


            //// Group 14
            {
            }


            //// Group 15
            {
            }


            //// Group 16
            {
            }


            //// Group 17
            {
            }


            //// Group 18
            {
            }
        }
    }


    if (isHighlighted)
    {
        //// Group 1040-checkmark
        {
            //// _x31_040-checkmark_x40_2x.png
            {
                //// Group 19
                {
                    //// Bezier 2 Drawing
                    UIBezierPath* bezier2Path = UIBezierPath.bezierPath;
                    [bezier2Path moveToPoint: CGPointMake(38, 11.31)];
                    [bezier2Path addCurveToPoint: CGPointMake(35.68, 9) controlPoint1: CGPointMake(38, 10.03) controlPoint2: CGPointMake(36.96, 9)];
                    [bezier2Path addCurveToPoint: CGPointMake(33.98, 9.76) controlPoint1: CGPointMake(35, 9) controlPoint2: CGPointMake(34.41, 9.3)];
                    [bezier2Path addLineToPoint: CGPointMake(33.97, 9.75)];
                    [bezier2Path addLineToPoint: CGPointMake(20.51, 24.35)];
                    [bezier2Path addLineToPoint: CGPointMake(15.96, 19.83)];
                    [bezier2Path addLineToPoint: CGPointMake(15.96, 19.84)];
                    [bezier2Path addCurveToPoint: CGPointMake(14.32, 19.15) controlPoint1: CGPointMake(15.54, 19.42) controlPoint2: CGPointMake(14.96, 19.15)];
                    [bezier2Path addCurveToPoint: CGPointMake(12, 21.46) controlPoint1: CGPointMake(13.04, 19.15) controlPoint2: CGPointMake(12, 20.19)];
                    [bezier2Path addCurveToPoint: CGPointMake(12.42, 22.78) controlPoint1: CGPointMake(12, 21.95) controlPoint2: CGPointMake(12.16, 22.41)];
                    [bezier2Path addLineToPoint: CGPointMake(12.42, 22.78)];
                    [bezier2Path addLineToPoint: CGPointMake(18.92, 32.02)];
                    [bezier2Path addLineToPoint: CGPointMake(18.92, 32.01)];
                    [bezier2Path addCurveToPoint: CGPointMake(20.82, 33) controlPoint1: CGPointMake(19.34, 32.61) controlPoint2: CGPointMake(20.03, 33)];
                    [bezier2Path addCurveToPoint: CGPointMake(22.66, 32.09) controlPoint1: CGPointMake(21.57, 33) controlPoint2: CGPointMake(22.24, 32.64)];
                    [bezier2Path addLineToPoint: CGPointMake(22.67, 32.09)];
                    [bezier2Path addLineToPoint: CGPointMake(37.53, 12.71)];
                    [bezier2Path addLineToPoint: CGPointMake(37.52, 12.7)];
                    [bezier2Path addCurveToPoint: CGPointMake(38, 11.31) controlPoint1: CGPointMake(37.82, 12.31) controlPoint2: CGPointMake(38, 11.83)];
                    [bezier2Path closePath];
                    [bezier2Path moveToPoint: CGPointMake(36.78, 12.14)];
                    [bezier2Path addLineToPoint: CGPointMake(36.22, 12.89)];
                    [bezier2Path addLineToPoint: CGPointMake(36.22, 12.89)];
                    [bezier2Path addLineToPoint: CGPointMake(22.49, 30.8)];
                    [bezier2Path addLineToPoint: CGPointMake(22.48, 30.8)];
                    [bezier2Path addLineToPoint: CGPointMake(21.92, 31.53)];
                    [bezier2Path addCurveToPoint: CGPointMake(20.82, 32.08) controlPoint1: CGPointMake(21.65, 31.88) controlPoint2: CGPointMake(21.25, 32.08)];
                    [bezier2Path addCurveToPoint: CGPointMake(19.68, 31.48) controlPoint1: CGPointMake(20.37, 32.08) controlPoint2: CGPointMake(19.94, 31.86)];
                    [bezier2Path addLineToPoint: CGPointMake(19.29, 30.93)];
                    [bezier2Path addLineToPoint: CGPointMake(13.76, 23.08)];
                    [bezier2Path addLineToPoint: CGPointMake(13.77, 23.08)];
                    [bezier2Path addLineToPoint: CGPointMake(13.18, 22.25)];
                    [bezier2Path addCurveToPoint: CGPointMake(12.93, 21.46) controlPoint1: CGPointMake(13.02, 22.02) controlPoint2: CGPointMake(12.93, 21.74)];
                    [bezier2Path addCurveToPoint: CGPointMake(14.32, 20.08) controlPoint1: CGPointMake(12.93, 20.7) controlPoint2: CGPointMake(13.55, 20.08)];
                    [bezier2Path addCurveToPoint: CGPointMake(15.3, 20.49) controlPoint1: CGPointMake(14.69, 20.08) controlPoint2: CGPointMake(15.04, 20.22)];
                    [bezier2Path addLineToPoint: CGPointMake(15.96, 21.14)];
                    [bezier2Path addLineToPoint: CGPointMake(15.96, 21.14)];
                    [bezier2Path addLineToPoint: CGPointMake(19.85, 25)];
                    [bezier2Path addLineToPoint: CGPointMake(20.54, 25.68)];
                    [bezier2Path addLineToPoint: CGPointMake(21.19, 24.97)];
                    [bezier2Path addLineToPoint: CGPointMake(34.02, 11.06)];
                    [bezier2Path addLineToPoint: CGPointMake(34.03, 11.08)];
                    [bezier2Path addLineToPoint: CGPointMake(34.67, 10.39)];
                    [bezier2Path addCurveToPoint: CGPointMake(35.68, 9.92) controlPoint1: CGPointMake(34.94, 10.09) controlPoint2: CGPointMake(35.3, 9.92)];
                    [bezier2Path addCurveToPoint: CGPointMake(37.07, 11.31) controlPoint1: CGPointMake(36.45, 9.92) controlPoint2: CGPointMake(37.07, 10.54)];
                    [bezier2Path addCurveToPoint: CGPointMake(36.78, 12.14) controlPoint1: CGPointMake(37.07, 11.68) controlPoint2: CGPointMake(36.91, 11.97)];
                    [bezier2Path closePath];
                    bezier2Path.miterLimit = 4;

                    [expression setFill];
                    [bezier2Path fill];
                }
            }


            //// Group 20
            {
            }


            //// Group 21
            {
            }


            //// Group 22
            {
            }


            //// Group 23
            {
            }


            //// Group 24
            {
            }


            //// Group 25
            {
            }


            //// Group 26
            {
            }


            //// Group 27
            {
            }


            //// Group 28
            {
            }


            //// Group 29
            {
            }


            //// Group 30
            {
            }


            //// Group 31
            {
            }


            //// Group 32
            {
            }


            //// Group 33
            {
            }


            //// Group 34
            {
            }
        }
    }
}

@end
