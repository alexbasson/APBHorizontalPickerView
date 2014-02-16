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
    
    describe(@"horizontal picker", ^{
        __block APBHorizontalPickerView *pickerView;
        
        beforeEach(^{
            pickerView = controller.horizontalPickerView;
        });
        
        it(@"should have two components", ^{
            pickerView.numberOfComponents should equal(2);
        });
        
        it(@"should have 100 columns in the first component and twenty six columns in the second component", ^{
            [pickerView numberOfColumnsInComponent:0] should equal(100);
            [pickerView numberOfColumnsInComponent:1] should equal(26);
        });
    });
});

SPEC_END
