//
//  DocumentViewController.m
//  AWSCore-WM
//
//  Created by Ricky on 2024/7/26.
//

#import "DocumentViewController.h"

@interface DocumentViewController()

@property IBOutlet UILabel *documentNameLabel;

@end

@implementation DocumentViewController
    
- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateViewsIfNecessary];
}

- (void)documentDidOpen {
    [super documentDidOpen];
    [self updateViewsIfNecessary];
}

- (void)updateViewsIfNecessary {
    // Check if the document is open and the view is loaded
    if (self.document == nil || (self.document.documentState & UIDocumentStateClosed) > 0 || !self.isViewLoaded) {
        return;
    }

    // Display the content of the document, e.g.:
    self.documentNameLabel.text = self.document.localizedName;
}

- (IBAction)dismissDocumentViewController {
    [self dismissViewControllerAnimated:YES completion:NULL];
}

@end
