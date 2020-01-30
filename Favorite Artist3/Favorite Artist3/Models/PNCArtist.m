//
//  PNCArtist.m
//  Favorite Artist3
//
//  Created by Lambda_School_Loaner_263 on 1/28/20.
//  Copyright © 2020 Lamdba School. All rights reserved.
//

#import "PNCArtist.h"

@implementation PNCArtist

- (NSString *)description {
    return [NSString stringWithFormat:@"Name: %@, Year: %d", self.name, self.year];
}

@end
