//
//  ViewController.h
//  tablevw
//
//  Created by codemac-07i on 16/05/17.
//  Copyright © 2017 codemac-07i. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
@property (strong, nonatomic) IBOutlet UIImageView *sbimg;
@property (strong, nonatomic) IBOutlet UILabel *sblbl;
@property (strong, nonatomic) IBOutlet UIView *sbvw;
- (IBAction)bttn:(id)sender;


@end

