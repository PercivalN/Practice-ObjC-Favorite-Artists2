//
//  PNCArtistController.h
//  Favorite Artist3
//
//  Created by Lambda_School_Loaner_263 on 1/28/20.
//  Copyright © 2020 Lamdba School. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PNCArtist;

@interface PNCArtistController : NSObject

@property NSMutableArray *artists;

- (void)addArtist:(PNCArtist *)artist;
- (void)loadArtists;
- (void)saveArtists;

@end


