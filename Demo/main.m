#import <UIKit/UIKit.h>

// 自定义ViewController，显示内部页面
@interface DemoViewController : UIViewController
@end

@implementation DemoViewController

// 页面加载时执行
- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 1. 设置页面背景色（浅灰色）
    self.view.backgroundColor = [UIColor colorWithRed:0.95 green:0.95 blue:0.95 alpha:1.0];
    
    // 2. 添加标题文字
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 100, self.view.bounds.size.width, 40)];
    titleLabel.text = @"我的第一个Demo页面";
    titleLabel.font = [UIFont systemFontOfSize:24 weight:UIFontWeightBold];
    titleLabel.textAlignment = NSTextAlignmentCenter;
    titleLabel.textColor = [UIColor blackColor];
    [self.view addSubview:titleLabel];
    
    // 3. 添加描述文字
    UILabel *descLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 160, self.view.bounds.size.width, 30)];
    descLabel.text = @"恭喜！App图标和页面已添加成功 🎉";
    descLabel.font = [UIFont systemFontOfSize:16];
    descLabel.textAlignment = NSTextAlignmentCenter;
    descLabel.textColor = [UIColor darkGrayColor];
    [self.view addSubview:descLabel];
}

@end

// 程序入口
int main(int argc, char * argv[]) {
    @autoreleasepool {
        // 1. 创建UIApplication（iOS程序核心）
        UIApplicationMain(argc, argv, nil, NSStringFromClass([UIApplicationDelegate class]));
        
        // 2. 创建窗口（整个App的显示容器）
        UIWindow *window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
        window.rootViewController = [[DemoViewController alloc] init]; // 设置根页面
        window.backgroundColor = [UIColor whiteColor];
        [window makeKeyAndVisible]; // 显示窗口
    }
    return 0;
}
