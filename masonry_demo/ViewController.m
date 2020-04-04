#import "ViewController.h"
#import "Masonry.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //测试是否能够正常使用静态库
    
    UIView *view1 = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 200, 200)];
    view1.backgroundColor = [UIColor greenColor];
    [self.view addSubview:view1];
    
    UIView *view2 = [[UIView alloc] init];
    view2.backgroundColor = [UIColor blueColor];
    [self.view addSubview:view2];
    [view2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(view1);
        make.size.mas_equalTo(CGSizeMake(30, 30));
    }];
}


@end
