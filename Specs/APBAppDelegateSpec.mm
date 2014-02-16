#import "APBAppDelegate.h"
#import "APBHorizontalPickerViewController.h"

using namespace Cedar::Matchers;
using namespace Cedar::Doubles;

SPEC_BEGIN(APBAppDelegateSpec)

describe(@"APBAppDelegate", ^{
    __block APBAppDelegate *appDelegate;

    beforeEach(^{
        appDelegate = [[APBAppDelegate alloc] init];
    });
    
    describe(@"when the app finishes loading", ^{
        beforeEach(^{
            [appDelegate application:nil didFinishLaunchingWithOptions:nil];
        });
        
        it(@"should have a window with an APBHorizontalViewController", ^{
            appDelegate.window.rootViewController should be_instance_of([APBHorizontalPickerViewController class]);
        });
    });
});

SPEC_END
