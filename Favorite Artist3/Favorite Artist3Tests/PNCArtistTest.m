//
//  PNCArtistTest.m
//  Favorite Artist3
//
//  Created by Lambda_School_Loaner_263 on 1/28/20.
//  Copyright © 2020 Lamdba School. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "PNCFileHelper.h"
#import "PNCArtist.h"
#import "PNCArtist+NSJSONSerialization.h"

@interface PNCArtistTest : XCTestCase

@end

@implementation PNCArtistTest

- (void)testParseArtistJson {
    NSBundle *bundle  = [NSBundle bundleForClass:[self class]];
    NSData *data = loadFile(@"Artists.json", bundle);
    XCTAssertNotNil(data);

    NSError *error = nil;

    NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:&error];
    NSLog(@"Error: %@", error);
    NSLog(@"JSON: %@", json);

    BYArtist *artist = [[PCNArtist alloc] initWithDictionary:json];



    XCTAssertEqualObjects(@"Coldplay", artist.name);
    XCTAssertEqual(1996, artist.year);
}

@end
