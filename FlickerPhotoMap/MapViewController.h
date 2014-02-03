//
//  MapViewController.h
//  FlickerPhotoMap
//
//  Created by Lee JaeJung on 2014. 1. 26..
//  Copyright (c) 2014년 Lee JaeJung. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "PinSelectionDelegateProtocol.h"

@interface MapViewController : UIViewController<MKMapViewDelegate, PinSelectionDelegate>
@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;

@end
