#import "APBHorizontalPickerViewController.h"
#import "APBHorizontalPickerView.h"

using namespace Cedar::Matchers;
using namespace Cedar::Doubles;

SPEC_BEGIN(APBHorizontalPickerViewControllerSpec)

describe(@"APBHorizontalPickerViewController", ^{
    __block APBHorizontalPickerViewController *controller;

    beforeEach(^{
        controller = [[APBHorizontalPickerViewController alloc] init];
        [controller view];
    });
    
    describe(@"when the view controller is loaded", ^{
        it(@"should have a horizontal picker", ^{
            controller.horizontalPickerView should be_instance_of([APBHorizontalPickerView class]);
            controller.view.subviews should contain(controller.horizontalPickerView);
        });
    });
});

SPEC_END
