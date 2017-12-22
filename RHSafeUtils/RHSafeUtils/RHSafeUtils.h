//
//  RHSateUtils.h
//  RHSateUtils
//
//  Created by liangju on 12/5/17.
//  Copyright © 2017 liangju. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface NSArray (RHSafeUtils)

- (id)rh_safeObjectAtIndex:(NSUInteger)index;
- (id)rh_safeObjectAtIndex:(NSUInteger)index class:(Class)aClass;

- (BOOL)rh_boolAtIndex:(NSUInteger)index;
+ (BOOL)rh_IsSafeArray:(NSArray *)array;
- (CGFloat)rh_floatAtIndex:(NSUInteger)index;
- (NSInteger)rh_integerAtIndex:(NSUInteger)index;
- (NSString *)rh_stringAtIndex:(NSUInteger)index;
- (NSDictionary *)rh_dictionaryAtIndex:(NSUInteger)index;
- (NSArray *)rh_arrayAtIndex:(NSUInteger)index;

@end

@interface NSMutableArray (RHSateUtils)

- (void)rh_safeAddObject:(id)anObject;
- (void)rh_safeInsertObject:(id)anObject atIndex:(NSUInteger)index;

@end

@interface NSDictionary (RHSateUtils)

- (id)rh_safeObjectForKey:(id)key;
- (id)rh_safeObjectForKey:(id)key class:(Class)aClass;

- (BOOL)rh_boolForKey:(id)key;
- (CGFloat)rh_floatForKey:(id)key;
- (NSInteger)rh_integerForKey:(id)key;
- (NSString *)rh_stringForKey:(id)key;
- (NSDictionary *)rh_dictionaryForKey:(id)key;
- (NSArray *)rh_arrayForKey:(id)key;

- (id)rh_safeValueForKey:(NSString *)key;
- (void)rh_safeSetValue:(id)value forKey:(NSString *)key;

@end

@interface NSMutableDictionary (RHSateUtils)

- (void)rh_safeSetObject:(id)anObject forKey:(id)key;

@end

@interface NSString (RHSateUtils)

- (BOOL)rh_isBlank;

@end
