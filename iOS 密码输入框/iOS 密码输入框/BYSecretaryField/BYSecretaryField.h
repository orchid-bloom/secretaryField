//
//  BYSecretaryField.h
//  GroupBuyUserAPP
//
//  Created by hanJianXin on 15-1-26.
//  Copyright (c) 2015年 陕西百益软件有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BYSecretaryField;

@protocol BYSecretaryFieldDelegate <NSObject>
-(void)sectetaryDidFinishedInput:(BYSecretaryField *)secField;
@end

@interface BYSecretaryField : UITextField
@property(nonatomic,weak) id<BYSecretaryFieldDelegate> secretaryDelegate;

@end
