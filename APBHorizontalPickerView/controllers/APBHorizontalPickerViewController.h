#import "APBHorizontalPickerView.h"

typedef NS_ENUM(NSInteger, PickerViewComponent) {
    PickerViewComponentNumbers = 0,
    PickerViewComponentLetters,
    PickerViewComponentNumberOfComponents // <-- this should always be last
};

@interface APBHorizontalPickerViewController : UIViewController <APBHorizontalPickerViewDataSource>

@property (nonatomic, strong, readonly) APBHorizontalPickerView *horizontalPickerView;

@end
