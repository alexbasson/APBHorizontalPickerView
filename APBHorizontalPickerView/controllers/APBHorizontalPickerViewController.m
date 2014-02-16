#import "APBHorizontalPickerViewController.h"
#import "APBHorizontalPickerView.h"

@interface APBHorizontalPickerViewController ()
@property (nonatomic, strong, readwrite) APBHorizontalPickerView *horizontalPickerView;
@end

@implementation APBHorizontalPickerViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    CGRect frame = CGRectMake(0.0f, 100.0f, self.view.bounds.size.width, 100.0f);
    self.horizontalPickerView = [[APBHorizontalPickerView alloc] initWithFrame:frame];
    [self.view addSubview:self.horizontalPickerView];
}

@end
