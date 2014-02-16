@class APBHorizontalPickerView;

@protocol APBHorizontalPickerViewDataSource <NSObject>
- (NSInteger)numberOfComponentsInPickerView:(APBHorizontalPickerView *)pickerView;
- (NSInteger)pickerView:(APBHorizontalPickerView *)pickerView numberOfColumnsInComponent:(NSInteger)component;
@end

@interface APBHorizontalPickerView : UIView

@property (nonatomic, weak) id<APBHorizontalPickerViewDataSource> dataSource;
@property (nonatomic, readonly) NSInteger numberOfComponents;

- (NSInteger)numberOfColumnsInComponent:(NSInteger)component;

@end
