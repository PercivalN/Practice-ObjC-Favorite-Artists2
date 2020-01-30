//
//  PNCArtistController.m
//  Favorite Artist3
//
//  Created by Lambda_School_Loaner_263 on 1/28/20.
//  Copyright © 2020 Lamdba School. All rights reserved.
//

#import "PNCArtistController.h"
#import "PNCArtist.h"
#import "PNCArtist+NSJSONSerialization.h"

@implementation PNCArtistController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _artists = [[NSMutableArray alloc] initWithArray:@[]];
        //[self loadArtists];
    }
    return self;
}

- (void)addArtist:(PNCArtist *)artist {
    [self.artists addObject: artist];
    [self saveArtists];
}

- (void)saveArtists {
    NSMutableArray *savingArray = [[NSMutableArray alloc] init];
    for (PNCArtist *artist in _artists) {
        NSDictionary *dictionary = [artist toDictionary];
        [savingArray addObject:dictionary];
    }
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    NSString *path = [documentsDirectory stringByAppendingPathComponent:@"Artists.plist"];
    NSArray *savingArrayNoMutable = [NSArray arrayWithArray:savingArray];
    bool success = [savingArrayNoMutable writeToFile:path atomically:YES];
}


- (void)loadArtists {
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    NSString *path = [documentsDirectory stringByAppendingPathComponent:@"Artists.plist"];
    NSArray *artistsArray = [[NSArray alloc] initWithContentsOfFile:path];
    for(NSDictionary *dictionary in artistsArray) {
        PNCArtist *artist = [[PNCArtist alloc] initWithFileDictionary:dictionary];
        [self.artists addObject:artist];
    }
}

@end
