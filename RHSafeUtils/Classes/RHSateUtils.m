//
//  RHSafeUtils.m
//  RHSateUtils
//
//  Created by liangju on 12/5/17.
//  Copyright © 2017 liangju. All rights reserved.
//

#import "RHSafeUtils.h"

@implementation NSArray (RHSafeUtils)

- (id)rh_safeObjectAtIndex:(NSUInteger)index {
    if (index >= self.count) {
        return nil;
    }
    id value = [self objectAtIndex:index];
    if (value == [NSNull null]) {
        return nil;
    }
    return value;
}

- (id)rh_safeObjectAtIndex:(NSUInteger)index class:(Class)aClass {
    id value = [self rh_safeObjectAtIndex:index];
    if ([value isKindOfClass:aClass]) {
        return value;
    }
    return nil;
}

- (BOOL)rh_boolAtIndex:(NSUInteger)index {
    id value = [self rh_safeObjectAtIndex:index];
    if ([value isKindOfClass:[NSNumber class]] || [value isKindOfClass:[NSString class]]) {
        return [value boolValue];
    }
    return 0;
}

- (CGFloat)rh_floatAtIndex:(NSUInteger)index {
    id value = [self rh_safeObjectAtIndex:index];
    if ([value isKindOfClass:[NSNumber class]] || [value isKindOfClass:[NSString class]]) {
        return [value floatValue];
    }
    return 0;
}

- (NSInteger)rh_integerAtIndex:(NSUInteger)index {
    id value = [self rh_safeObjectAtIndex:index];
    if ([value isKindOfClass:[NSNumber class]] || [value isKindOfClass:[NSString class]]) {
        return [value integerValue];
    }
    return 0;
}

- (NSString *)rh_stringAtIndex:(NSUInteger)index {
    return [self rh_safeObjectAtIndex:index class:[NSString class]];
}

- (NSDictionary *)rh_dictionaryAtIndex:(NSUInteger)index {
    return [self rh_safeObjectAtIndex:index class:[NSDictionary class]];
}

- (NSArray *)rh_arrayAtIndex:(NSUInteger)index {
    return [self rh_safeObjectAtIndex:index class:[NSArray class]];
}

@end

@implementation NSMutableArray (RHSateUtils)

- (void)rh_safeAddObject:(id)anObject {
    if (anObject) {
        [self addObject:anObject];
    }
}

- (void)rh_safeInsertObject:(id)anObject atIndex:(NSUInteger)index {
    if (anObject && index <= self.count) {
        [self insertObject:anObject atIndex:index];
    }
}

@end

@implementation NSDictionary (RHSateUtils)

- (id)rh_safeObjectForKey:(id)key {
    if (key == nil) {
        return nil;
    }
    id value = [self objectForKey:key];
    if (value == [NSNull null]) {
        return nil;
    }
    return value;
}

- (id)rh_safeObjectForKey:(id)key class:(Class)aClass {
    id value = [self rh_safeObjectForKey:key];
    if ([value isKindOfClass:aClass]) {
        return value;
    }
    return nil;
}

- (BOOL)rh_boolForKey:(id)key {
    id value = [self rh_safeObjectForKey:key];
    if ([value isKindOfClass:[NSNumber class]] || [value isKindOfClass:[NSString class]]) {
        return [value boolValue];
    }
    return NO;
}

- (CGFloat)rh_floatForKey:(id)key {
    id value = [self rh_safeObjectForKey:key];
    if ([value isKindOfClass:[NSNumber class]] || [value isKindOfClass:[NSString class]]) {
        return [value floatValue];
    }
    return 0;
}

- (NSInteger)rh_integerForKey:(id)key {
    id value = [self rh_safeObjectForKey:key];
    if ([value isKindOfClass:[NSNumber class]] || [value isKindOfClass:[NSString class]]) {
        return [value integerValue];
    }
    return 0;
}

- (NSString *)rh_stringForKey:(id)key {
    return [self rh_safeObjectForKey:key class:[NSString class]];
}

- (NSDictionary *)rh_dictionaryForKey:(id)key {
    return [self rh_safeObjectForKey:key class:[NSDictionary class]];
}

- (NSArray *)rh_arrayForKey:(id)key {
    return [self rh_safeObjectForKey:key class:[NSArray class]];
}

- (id)rh_safeValueForKey:(NSString *)key {
    return [self rh_safeObjectForKey:key];
}

- (void)rh_safeSetValue:(id)value forKey:(NSString *)key {
    if (key && [key isKindOfClass:[NSString class]]) {
        [self setValue:value forKey:key];
    }
}

@end

@implementation NSMutableDictionary (RHSateUtils)

- (void)rh_safeSetObject:(id)anObject forKey:(id)key {
    if (key && anObject) {
        [self setObject:anObject forKey:key];
    }
}

@end

@implementation NSString (RHSateUtils)

- (BOOL)isBlank {
    if (self == nil || self == NULL) {
        return YES;
    }
    
    if ([self isKindOfClass:[NSNull class]]) {
        return YES;
    }
    
    if (([[self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]] length] == 0) || ([[self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] length] == 0)) {
        return YES;
    }
    return NO;
}

@end

