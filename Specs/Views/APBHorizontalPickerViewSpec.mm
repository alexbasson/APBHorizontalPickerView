#import "APBHorizontalPickerView.h"

using namespace Cedar::Matchers;
using namespace Cedar::Doubles;

SPEC_BEGIN(APBHorizontalPickerViewSpec)

describe(@"APBHorizontalPickerView", ^{
    __block APBHorizontalPickerView *view;
    __block id<APBHorizontalPickerViewDataSource> dataSource;

    beforeEach(^{
        view = [[APBHorizontalPickerView alloc] init];
        dataSource = nice_fake_for(@protocol(APBHorizontalPickerViewDataSource));
        view.dataSource = dataSource;
    });
    
    describe(@"when the data source is set up", ^{
        it(@"should have the correct number of components", ^{
            dataSource stub_method(@selector(numberOfComponentsInPickerView:)).with(view).and_return(2);
            [view numberOfComponents] should equal(2);
        });
        
        it(@"should have the correct number of columns for the first component", ^{
            dataSource stub_method(@selector(pickerView:numberOfColumnsInComponent:)).with(view, 0).and_return(100);
            [view numberOfColumnsInComponent:0] should equal(100);
        });
        
        it(@"should have the correct number of columns for the second component", ^{
            dataSource stub_method(@selector(pickerView:numberOfColumnsInComponent:)).with(view, 1).and_return(26);
            [view numberOfColumnsInComponent:1] should equal(26);
        });
    });
});

SPEC_END
