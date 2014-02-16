#import "APBAppDelegate.h"
#import "APBHorizontalPickerViewController.h"

@implementation APBAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    APBHorizontalPickerViewController *viewController = [[APBHorizontalPickerViewController alloc] init];
    self.window.rootViewController = viewController;
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

@end
