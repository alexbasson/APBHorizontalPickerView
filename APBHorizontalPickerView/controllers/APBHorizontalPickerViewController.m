#import "APBHorizontalPickerViewController.h"

@interface APBHorizontalPickerViewController ()
@property (nonatomic, strong, readwrite) APBHorizontalPickerView *horizontalPickerView;
@end

@implementation APBHorizontalPickerViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    CGRect frame = CGRectMake(0.0f, 100.0f, self.view.bounds.size.width, 100.0f);
    self.horizontalPickerView = [[APBHorizontalPickerView alloc] initWithFrame:frame];
    self.horizontalPickerView.dataSource = self;

    [self.view addSubview:self.horizontalPickerView];
}

#pragma mark - <APBHorizontalPickerViewDataSource>

- (NSInteger)numberOfComponentsInPickerView:(APBHorizontalPickerView *)pickerView
{
    return PickerViewComponentNumberOfComponents;
}

- (NSInteger)pickerView:(APBHorizontalPickerView *)pickerView numberOfColumnsInComponent:(NSInteger)component
{
    switch (component) {
        case PickerViewComponentNumbers:
            return 100;
            break;
        case PickerViewComponentLetters:
            return 26;
            break;
        default:
            return 0;
            break;
    }
}

@end
