//
//  PinSelectionDelegateProtocol.h
//  FlickerPhotoMap
//
//  Created by Lee JaeJung on 2014. 2. 3..
//  Copyright (c) 2014년 Lee JaeJung. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    BLUE_PIN,
    RED_PIN,
    GREEN_PIN,
    YELLOW_PIN
} AnnotationPinType;


@protocol PinSelectionDelegate <NSObject>

@required

-(void)userDidSelectPinType:(AnnotationPinType)aPinType;

@end
