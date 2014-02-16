#import "APBHorizontalPickerView.h"

@interface APBHorizontalPickerView ()
@property (nonatomic, readwrite) NSInteger numberOfComponents;
@end

@implementation APBHorizontalPickerView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
    }
    return self;
}

- (NSInteger)numberOfComponents
{
    if (!_numberOfComponents) {
        _numberOfComponents = [self.dataSource numberOfComponentsInPickerView:self];
    }
    return _numberOfComponents;
}

- (NSInteger)numberOfColumnsInComponent:(NSInteger)component
{
    return [self.dataSource pickerView:self numberOfColumnsInComponent:component];
}

@end
