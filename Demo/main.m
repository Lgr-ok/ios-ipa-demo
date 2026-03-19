#import <UIKit/UIKit.h>

// 声明自定义控制器（先声明后使用）
@interface DemoViewController : UIViewController
@end

// 声明AppDelegate
@interface AppDelegate : UIResponder <UIApplicationDelegate>
@property (strong, nonatomic) UIWindow *window;
@end

// 实现DemoViewController
@implementation DemoViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    // 添加测试标签
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 200, self.view.bounds.size.width, 40)];
    label.text = @"打包成功！";
    label.font = [UIFont systemFontOfSize:24 weight:UIFontWeightMedium];
    label.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:label];
}
@end

// 实现AppDelegate
@implementation AppDelegate
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    DemoViewController *vc = [[DemoViewController alloc] init];
    self.window.rootViewController = vc;
    [self.window makeKeyAndVisible];
    return YES;
}
@end

// 程序入口（必须保留）
int main(int argc, char * argv[]) {
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
