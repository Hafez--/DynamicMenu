//
//  menuAnimationComponent.h
//  DynamicDemo
//
//  Created by Armin Rassadi on 9/17/14.
//  Copyright (c) 2014 idek. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum MenuDirectionOptionTypes{
    menuDirectionLeftToRight,
    menuDirectionRightToLeft,
    menuDirectionUpToDown,
    menuDirectionDownToUp
} MenuDirectionOptions;


@interface menuAnimationComponent : NSObject<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UIColor *menuBackgroundColor;
@property (nonatomic, strong) NSMutableDictionary *tableSettings;
@property (nonatomic) CGFloat optionCellHeight;
@property (nonatomic) CGFloat acceleration;
@property (nonatomic) CGFloat elasticity;



- (id)initMenuWithFrame:(CGRect)frame targetView:(UIView *)targetView direction:(MenuDirectionOptions)direction options:(NSArray *)options optionImages:(NSArray *)optionImages;
- (void)showMenuWithSelectionHandler:(void(^)(NSInteger selectedOptionIndex))handler;

@end
