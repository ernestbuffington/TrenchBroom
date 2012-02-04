/*
Copyright (C) 2010-2012 Kristian Duske

This file is part of TrenchBroom.

TrenchBroom is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

TrenchBroom is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with TrenchBroom.  If not, see <http://www.gnu.org/licenses/>.
*/

#import "Wad.h"

@implementation Wad

- (id)init {
    if (self = [super init]) {
        paletteEntries = [[NSMutableArray alloc] init];
        textureEntries = [[NSMutableArray alloc] init];
    }
    
    return self;
}

- (id)initWithName:(NSString *)aName {
    if (self = [self init]) {
        name = [aName retain];
    }
    
    return self;
}

- (void)addPaletteEntry:(WadPaletteEntry *)entry {
    [paletteEntries addObject:entry];
}

- (void)addTextureEntry:(WadTextureEntry *)entry {
    [textureEntries addObject:entry];
}

- (NSArray *)paletteEntries {
    return paletteEntries;
}

- (NSArray *)textureEntries {
    return textureEntries;
}

- (NSString *)name {
    return name;
}

- (void)dealloc {
    [name release];
    [paletteEntries release];
    [textureEntries release];
    [super dealloc];
}

@end
