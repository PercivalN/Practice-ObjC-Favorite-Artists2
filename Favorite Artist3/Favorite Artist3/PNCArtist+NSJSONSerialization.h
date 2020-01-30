//
//  PNCArtist+NSJSONSerialization.h
//  Favorite Artist3
//
//  Created by Lambda_School_Loaner_263 on 1/30/20.
//  Copyright © 2020 Lamdba School. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PNCArtist.h"


@interface PNCArtist (NSJSONSerialization)

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;
- (NSDictionary *)toDictionary;

@end

