//
//  BKCheckBox.m
//  BeelineUIKit
//
//  Created by Roman Churkin on 22/10/14.
//  Copyright (c) 2014 RedMadRobot. All rights reserved.
//

#import "BKCheckBox.h"

// Helper
#import "NSLayoutConstraint+BKConstraints.h"
#import "UIImage+BKBackgroundImages.h"

// Resources
#import "UIColor+BKStyle.h"

// View
#import "BKLabelA3.h"


@interface BKCheckBox ()

#pragma mark - Properties

@property (nonatomic, strong) UIImageView *checkImageView;
@property (nonatomic, strong) UILabel *checkTitleLabel;

@end


@implementation BKCheckBox

static UIImage * kCircleEmpty;
static UIImage * kCircleFilled;


#pragma mark - Accessors / Mutators

- (void)setCheckState:(BOOL)checkState
{
    _checkState = checkState;
    self.checkImageView.image = [self imageForStateChecked:_checkState];
    if (_checkState) self.checkImageView.tintColor = self.tintColor;
    else self.checkImageView.tintColor = [UIColor BK_grayColor];
}

- (void)setTitle:(NSString *)title { self.checkTitleLabel.text = title; }

- (NSString *)title { return self.checkTitleLabel.text; }

- (void)setEnabled:(BOOL)enabled
{
    [super setEnabled:enabled];
    if (self.enabled) [self tintColorUpdate:self.tintColor];
    else [self tintColorUpdate:[UIColor BK_grayColor]];
}


#pragma mark - Initialization

+ (void)initialize
{
    kCircleFilled = [[UIImage imageNamed:@"bk-check-box"]
                     imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    
    CGSize size = kCircleFilled.size;
    UIImage *empty =
        [UIImage BK_circleImageWithBorderColor:[UIColor blackColor]
                               borderLineWidth:1.5f
                                     fillColor:nil
                                      diameter:MAX(size.height, size.height)];
    kCircleEmpty = [empty imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    
}

- (void)initialization
{
    self.tintColor = [UIColor BK_yellowColor];
    
    UIImage *checkImage = [self imageForStateChecked:self.checkState];
    
    UIImageView *checkImageView = [[UIImageView alloc] initWithImage:checkImage];
    checkImageView.tintColor = self.tintColor;
    checkImageView.translatesAutoresizingMaskIntoConstraints = NO;
    [self addSubview:checkImageView];
    self.checkImageView = checkImageView;
    
    [checkImageView setContentCompressionResistancePriority:UILayoutPriorityRequired-10
                                                    forAxis:UILayoutConstraintAxisVertical];
    [checkImageView setContentCompressionResistancePriority:UILayoutPriorityRequired-10
                                                    forAxis:UILayoutConstraintAxisHorizontal];
    [checkImageView setContentHuggingPriority:UILayoutPriorityDefaultHigh
                                      forAxis:UILayoutConstraintAxisVertical];
    [checkImageView setContentHuggingPriority:UILayoutPriorityDefaultHigh
                                      forAxis:UILayoutConstraintAxisHorizontal];
    
    [self addConstraint:
        [NSLayoutConstraint BK_centerVerticallyView:checkImageView toView:self]];
    
    
    UILabel *checkTitleLabel = [[BKLabelA3 alloc] initWithFrame:CGRectZero];
    checkTitleLabel.translatesAutoresizingMaskIntoConstraints = NO;
    checkTitleLabel.lineBreakMode = NSLineBreakByTruncatingTail;
    checkTitleLabel.textColor = [UIColor BK_blackColor];
    [self addSubview:checkTitleLabel];
    self.checkTitleLabel = checkTitleLabel;
    
    [checkTitleLabel setContentCompressionResistancePriority:UILayoutPriorityRequired-20
                                                     forAxis:UILayoutConstraintAxisVertical];
    [checkTitleLabel setContentCompressionResistancePriority:UILayoutPriorityRequired-20
                                                     forAxis:UILayoutConstraintAxisHorizontal];
    [checkTitleLabel setContentHuggingPriority:UILayoutPriorityDefaultLow
                                       forAxis:UILayoutConstraintAxisVertical];
    [checkTitleLabel setContentHuggingPriority:UILayoutPriorityDefaultLow
                                       forAxis:UILayoutConstraintAxisHorizontal];
    
    [self addConstraints:
        [NSLayoutConstraint BK_fillSuperviewVerticallyWithView:checkImageView padding:0.f]];
    [self addConstraints:
        [NSLayoutConstraint BK_fillSuperviewVerticallyWithView:checkTitleLabel padding:0.f]];
    
    [self addConstraints:
        [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[checkImageView]-4-[checkTitleLabel]|"
                                                options:0
                                                metrics:nil
                                                  views:NSDictionaryOfVariableBindings(checkImageView, checkTitleLabel)]];
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if (self) [self initialization];
    
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    
    if (self) [self initialization];
    
    return self;
}


#pragma mark - UIView

- (void)tintColorDidChange { if (self.enabled) [self tintColorUpdate:self.tintColor]; }


#pragma mark - Private helpers

- (void)tintColorUpdate:(UIColor *)newColor
{
    if (self.state == UIControlStateDisabled) {
        self.checkTitleLabel.textColor = newColor;
        if (self.checkState) self.checkImageView.tintColor = [UIColor BK_grayColor];
        else self.checkImageView.tintColor = [UIColor BK_lightGrayColor];
    } else {
        self.checkTitleLabel.textColor = [UIColor BK_blackColor];
        if (self.checkState) self.checkImageView.tintColor = newColor;
        else self.checkImageView.tintColor = [UIColor BK_grayColor];
    }
}


- (void)toggleCheckState { self.checkState = !self.checkState; }

- (UIImage *)imageForStateChecked:(BOOL)checked
{
    if (checked) return kCircleFilled;
    else return kCircleEmpty;
}


#pragma mark - UIControl overrides

- (void)endTrackingWithTouch:(UITouch *)touch withEvent:(UIEvent *)event
{
    [self toggleCheckState];
    [self sendActionsForControlEvents:UIControlEventValueChanged];
    [super endTrackingWithTouch:touch withEvent:event];
}

@end
