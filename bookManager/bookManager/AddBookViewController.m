//
//  AddBookViewController.m
//  bookManager
//
//  Created by Lee JaeJung on 2014. 2. 11..
//  Copyright (c) 2014년 Lee JaeJung. All rights reserved.
//

#import "AddBookViewController.h"
#import "DBBook.h"
#import "DBCategory.h"
#import "DBAuthor.h"


@interface AddBookViewController ()
{
    NSMutableDictionary *_bookDict;
    
}

@property (weak, nonatomic) IBOutlet UITextField *_titleTextField;
@property (weak, nonatomic) IBOutlet UITextField *_yearTextField;
@property (weak, nonatomic) IBOutlet UITextView *_descriptionTextView;

@end


@implementation AddBookViewController

@synthesize delegate;
@synthesize _titleTextField;
@synthesize _yearTextField;
@synthesize _descriptionTextView;

@synthesize category;
@synthesize author;


- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Text field delegate

- (void)textFieldDidEndEditing:(UITextField *)textField {
    if (textField.text.length == 0) {
        textField.text = @"";
    }
    if (_bookDict == nil) {
        _bookDict = [[NSMutableDictionary alloc] init];
    }
    
    if (textField == self._titleTextField) {
        [_bookDict setObject:textField.text forKey:@"title"];
    }
    if (textField == self._yearTextField) {
        [_bookDict setObject:textField.text forKey:@"year"];
    }
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}


#pragma mark - Text view delegate

- (void)textViewDidEndEditing:(UITextView *)textView {
    if (textView.text.length == 0) {
        textView.text = @"";
    }
    if (_bookDict == nil) {
        _bookDict = [[NSMutableDictionary alloc] init];
    }
    if (textView == self._descriptionTextView) {
        [_bookDict setObject:textView.text forKey:@"bookDescription"];
    }
}

- (BOOL)textViewShouldReturn:(UITextView *)textView {
    [textView resignFirstResponder];
    return YES;
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"SelectCategory"]) {
        [(SelectionViewController *)[segue destinationViewController] setObjects:[DBCategory allCategories]];
        [(SelectionViewController *)[segue destinationViewController] setDelegate:self];
    }
    if ([[segue identifier] isEqualToString:@"SelectAuthor"]) {
        [(SelectionViewController *)[segue destinationViewController] setObjects:[DBAuthor allAuthors]];
        [(SelectionViewController *)[segue destinationViewController] setDelegate:self];
    }
}


#pragma mark - SelectionVCDelegate

- (void)selectionVC:(SelectionViewController *)aVC didSelectObject:(id)anObject {
    if ([anObject isKindOfClass:[DBCategory class]]) {
        [_bookDict setObject:((DBCategory *)anObject).categoryId forKey:@"categoryId"];
        UITableViewCell *cell = [self.tableView cellForRowAtIndexPath:[NSIndexPath indexPathForRow:0 inSection:1]];
        cell.textLabel.text = ((DBCategory *)anObject).categoryName;
     }
    if ([anObject isKindOfClass:[DBAuthor class]]) {
        [_bookDict setObject:((DBAuthor *)anObject).authorId forKey:@"authorId"];
        UITableViewCell *cell = [self.tableView cellForRowAtIndexPath:[NSIndexPath indexPathForRow:0 inSection:2]];
        cell.textLabel.text = ((DBAuthor *)anObject).fullName;

    }
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)cancelPressed:(id)sender {
    [self dismissModalViewControllerAnimated:YES];
}


- (IBAction)savePressed:(id)sender {
    
    [self._titleTextField resignFirstResponder];
    [self._yearTextField resignFirstResponder];
    [self._descriptionTextView resignFirstResponder];
    
    // Create entities
    if (_bookDict != nil) {
        DBBook *newBook = [DBBook createEntityWithDictionary:_bookDict];        
        if ([self.delegate respondsToSelector:@selector(addBookVC:didCreateObject:)]) {
            
            if (self.author != nil)
                newBook.authorId = self.author.authorId;
            if (self.category != nil)
                newBook.categoryId = self.category.categoryId;
            
            [self.delegate addBookVC:self didCreateObject:newBook];
        }
    }
    [self dismissModalViewControllerAnimated:YES];
}
@end


