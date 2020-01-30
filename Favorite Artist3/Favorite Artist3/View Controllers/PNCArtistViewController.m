//
//  PNCArtistViewController.m
//  Favorite Artist3
//
//  Created by Lambda_School_Loaner_263 on 1/28/20.
//  Copyright © 2020 Lamdba School. All rights reserved.
//

#import "PNCArtist.h"
#import "PNCArtistController.h"
#import "PNCArtistViewController.h"
@interface PNCArtistViewController () <UISearchDisplayDelegate>

@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *saveButton;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *yearLabel;
@property (weak, nonatomic) IBOutlet UITextView *biographyTextView;

- (void)updateView;


@end

@implementation PNCArtistViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self updateView];
}

- (void)updateView {
    if(self.artist) {
        self.nameLabel.text = self.artist.name;
        self.yearLabel.text = [NSString stringWithFormat:@"%d", self.artist.year];
        self.biographyTextView.text = self.artist.biography;
    } else {
        self.nameLabel.text = @"";
        self.yearLabel.text = @"";
        self.biographyTextView.text = @"";
    }
}

- (IBAction)saveButtonTapped:(id)sender {
}

- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar {
    
    NSString *keyword = searchBar.text;
}

@end
