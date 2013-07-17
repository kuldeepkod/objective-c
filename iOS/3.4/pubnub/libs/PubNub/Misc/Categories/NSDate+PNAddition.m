//
//  NSArray+PNAdditions.h
//  pubnub
//
//  Created by Sergey Mamontov on 05/14/13.
//
//


#import "NSDate+PNAddition.h"


#pragma mark Private category interface delcaration

@interface NSDate (PNAdditionPrivate)


#pragma mark - Misc methods

- (NSDateFormatter *)consoleOutputDateFormatter;

#pragma mark -


@end


#pragma mark Public category interface implementation

@implementation NSDate (PNAddition)


#pragma mark - Instance methods

- (NSString *)consoleOutputTimestamp {

    return [[self consoleOutputDateFormatter] stringFromDate:self];
}


#pragma mark - Misc methods

- (NSDateFormatter *)consoleOutputDateFormatter {

    static dispatch_once_t dispatchOnceToken;
    static NSDateFormatter *dateFormatter;
    dispatch_once(&dispatchOnceToken, ^{

        dateFormatter = [NSDateFormatter new];
        dateFormatter.dateFormat = @"YYYY-MM-dd HH:mm:SSSS";
    });


    return dateFormatter;
}

#pragma mark -


@end