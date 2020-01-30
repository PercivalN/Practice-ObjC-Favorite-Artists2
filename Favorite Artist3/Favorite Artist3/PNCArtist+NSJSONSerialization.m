//
//  PNCArtist+NSJSONSerialization.m
//  Favorite Artist3
//
//  Created by Lambda_School_Loaner_263 on 1/28/20.
//  Copyright © 2020 Lamdba School. All rights reserved.
//

#import "PNCArtist+NSJSONSerialization.h"
#import <Foundation/Foundation.h>


@implementation PNCArtist (NSJSONSerialization)

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    if(self = [super init]) {
        NSArray *artists = dictionary[@"artists"];
        NSDictionary *artist = artists[0];
        self.name = artist[@"strArtist"];
        self.biography = artist[@"strBiographyEN"];
        //self.year = [artist[@"intFormedYear"] intValue];
        
        if (artist[@"intFormedYear"] == [NSNull null]) {
            self.year = 0;
        } else {
            self.year = [artist[@"intFormedYear"] intValue];
        }

    }
    return self;
}

- (instancetype)initWithFileDictionary:(NSDictionary *)dictionary {
    if(self = [super init]) {

        self.name = dictionary[@"name"];
        self.biography = dictionary[@"biography"];
        self.year = [dictionary[@"year"] intValue];

    }
    return self;
}

- (NSDictionary *)toDictionary {
    NSDictionary *dictionary = [[NSMutableDictionary alloc] init];
    [dictionary setValue: self.name forKey:@"name"];
    [dictionary setValue: self.biography forKey:@"biography"];
    [dictionary setValue: [NSNumber numberWithInt:self.year] forKey:@"year"];

    return dictionary;
}

@end
