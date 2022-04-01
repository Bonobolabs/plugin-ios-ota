//
//  OneSkyOTAPluginSim.m
//  OneSkyOTADemo
//
//  Created by Adam Shaw on 4/1/22.
//  Copyright © 2022 OneSky Inc. All rights reserved.
//


#if TARGET_OS_SIMULATOR

#import <Foundation/Foundation.h>
#import "OneSkyOTAPlugin.h"

NSString  *const OneSkyOTAPluginTranslationsDidUpdateNotification = @"SIM_OneSkyOTAPluginTranslationsDidUpdateNotification";

@implementation OneSkyOTAPlugin

/*!
 @abstract
 Call this method from the [UIApplicationDelegate application:didFinishLaunchingWithOptions:]
 Initialize using project id, api token, secret.

 @param projectID The id of the project.

 @param key The API key can be found in Site Settings under API Keys & Usage on OneSky Web Admin.

 @param secret The API secret can be found in Site Settings under API Keys & Usage on OneSky Web Admin.
 */
+ (void)provideAPIKey:(NSString *)key APISecret:(NSString *)secret projectID:(NSString *)projectID {

}

/*!
 @abstract
 Method for retrieving localized strings.

 @param key The key for a string in the table identified by tableName.

 @param value The value to return if key is nil or if a localized string for key can’t be found in the table.

 @param table tableName - The receiver’s string table to search. If tableName is nil or is an empty string, the method attempts to use the table in Localizable.strings.
 */
+ (NSString *)localizedStringForKey:(NSString *)key value:(NSString *)value table:(NSString *)tableName {
    return NSLocalizedStringFromTable(key, tableName, @"");
}

/*!
 @abstract
 Method for retrieving localized strings.

 @param key The key for a string in the table identified by tableName.

 @param value The value to return if key is nil or if a localized string for key can’t be found in the table.

 @param table tableName - The receiver’s string table to search. If tableName is nil or is an empty string, the method attempts to use the table in Localizable.strings.

 @prarm bundle bundle - The bundle to fallback to when the translation is not found in OneSky strings

 @discussion in order for our plugin to identify your custom bundles,
 */
+ (NSString *)localizedStringForKey:(NSString *)key value:(NSString *)value table:(NSString *)tableName fallbackBundle:(NSBundle *)bundle {
    return NSLocalizedStringFromTable(key, tableName, @"");
}

/*!
 @abstract
 Method to request update of translations immediately
 */
+ (void)checkForUpdate {

}

/*!
 @abstract
 Method to delete cache of translations retreieved from OneSky server
 */
+ (void)deleteCache {

}


/*!
 @abstract
 Set log level, default is OneSkyLogLevelDebug
 */
+ (void)setLogLevel:(OneSkyLogLevel)level {

}

/*!
 @abstract
 Set the language to use for -localizedStringForKey:value:table: calls, default is [[NSLocale preferredLanguages] firstObject]
 */
+ (void)setLanguage:(NSString *)language {

}

/*!
 @abstract
 Register fallback bundles, must be called before using OSLocalizedStringFromTableWithFallbackToBundle
 */
+ (void)registerFallbackBundles:(NSArray *)bundles {

}

/*!
 @abstract
 Get the current language used for -localizedStringForKey:value:table: calls
 */
+ (NSString *)language:(NSString *)language {
    return [[NSLocale preferredLanguages] firstObject];
}

@end


#endif
