#import <UIKit/UIKit.h>

// 【第一步：先声明自定义控制器类】必须在使用前声明
@interface DemoViewController : UIViewController
@end

// 【第二步：声明AppDelegate类】
@interface AppDelegate : UIResponder <UIApplicationDelegate>
@property (strong, nonatomic) UIWindow *window;
@end

// 【第三步：实现DemoViewController】
@implementation DemoViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // 设置页面背景
    self.view.backgroundColor = [UIColor whiteColor];
    // 添加测试文字
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 200, self.view.bounds.size.width, 40)];
    label.text = @"打包成功！";
    label.font = [UIFont systemFontOfSize:24 weight:UIFontWeightMedium];
    label.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:label];
}
@end

// 【第四步：实现AppDelegate】（此时DemoViewController已声明，可正常使用）
@implementation AppDelegate
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // 创建窗口
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    // 实例化自定义控制器（关键：此时类已声明，编译器能识别）
    DemoViewController *vc = [[DemoViewController alloc] init];
    self.window.rootViewController = vc;
    // 显示窗口
    [self.window makeKeyAndVisible];
    return YES;
}
@end

// 【程序入口】
int main(int argc, char * argv[]) {
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
