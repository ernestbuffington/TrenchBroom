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

#import <Cocoa/Cocoa.h>
#import "Math.h"

@class MapDocument;
@class Octree;
@class PickingHitList;
@protocol Filter;

@interface Picker : NSObject {
    @private
    Octree* octree;
}

- (id)initWithMap:(MapDocument *)theMap;
- (PickingHitList *)pickObjects:(const TRay *)ray filter:(id <Filter>)filter;
- (void)pickCloseFaces:(const TRay *)theRay brushes:(NSArray *)theBrushes maxDistance:(float)theMaxDistance hitList:(PickingHitList *)theHitList;
- (void)pickVertices:(const TRay *)theRay brushes:(NSArray *)theBrushes handleRadius:(float)theHandleRadius hitList:(PickingHitList *)theHitList;

@end
