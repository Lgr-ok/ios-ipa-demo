#import <UIKit/UIKit.h>

// 1. 自定义AppDelegate（必须实现UIApplicationDelegate协议）
@interface AppDelegate : UIResponder <UIApplicationDelegate>
@property (strong, nonatomic) UIWindow *window;
@end

@implementation AppDelegate

// App启动完成后执行
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // 2. 创建主窗口
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    // 3. 创建根页面（自定义ViewController）
    DemoViewController *vc = [[DemoViewController alloc] init];
    self.window.rootViewController = vc;
    
    // 4. 显示窗口
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end

// 5. 自定义页面ViewController
@interface DemoViewController : UIViewController
@end

@implementation DemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 设置页面背景色（适配深浅模式）
    self.view.backgroundColor = [UIColor systemBackgroundColor];
    
    // 添加标题
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 150, self.view.bounds.size.width, 50)];
    titleLabel.text = @"我的Demo App";
    titleLabel.font = [UIFont systemFontOfSize:28 weight:UIFontWeightBold];
    titleLabel.textAlignment = NSTextAlignmentCenter;
    titleLabel.textColor = [UIColor labelColor];
    [self.view addSubview:titleLabel];
    
    // 添加描述
    UILabel *descLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 220, self.view.bounds.size.width, 30)];
    descLabel.text = @"图标+页面 打包成功 🎉";
    descLabel.font = [UIFont systemFontOfSize:18];
    descLabel.textAlignment = NSTextAlignmentCenter;
    descLabel.textColor = [UIColor secondaryLabelColor];
    [self.view addSubview:descLabel];
}

@end

// 6. 程序入口（正确的UIApplicationMain用法）
int main(int argc, char * argv[]) {
    @autoreleasepool {
        // 正确传参：第四个参数传AppDelegate类名
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
