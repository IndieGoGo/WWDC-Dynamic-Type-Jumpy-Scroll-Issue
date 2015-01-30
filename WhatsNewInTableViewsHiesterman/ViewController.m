//
//  ViewController.m
//  WhatsNewInTableViewsHiesterman
//
//  Created by Jan Jirout on 1/30/15.
//  Copyright (c) 2015 Indiegogo. All rights reserved.
//

#import "ViewController.h"
#import "DynamicCell.h"

@interface ViewController ()

@property NSArray *headlines;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView registerClass:[DynamicCell class] forCellReuseIdentifier:@"cell"];
    self.tableView.estimatedRowHeight = 44.0;
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    
    
    self.tableView.contentInset = UIEdgeInsetsMake(20.0, 0.0, 0.0, 0.0);
    [self loadHeadlines];
}


- (void)loadHeadlines {
    self.headlines = @[
                       @"Teachers Use iPad to Enhance Learning in Special Education Across the Globe",
                       @"2014 NHL Playoffs: Teams Turning to High-Tech Analysis During Games",
                       @"Apple Updates MacBook Air",
                       @"Apple Reports Second-Quarter Results",
                       @"Apple Expands Capital Return Program to Over $130 Billion and Announces Seven-for-One Stock Split",
                       @"Apple Outlines Progress of Environmental Efforts",
                       @"Next-Generation Hearing Aids Tune In to iPhone",
                       @"Indiegogo Developers Go to Great Lengths to Resolve UITableView Scrolling Issues",
                       @"Using Tablets to Reach Kids With Autism",
                       @"Apple Worldwide Developers Conference Kicks Off June 2 in San Francisco",
                       @"Apple Leads Shift Toward Cleaner Internet",
                       @"San Francisco Giants Hope iBeacon Hits a Home Run with Fans",
                       @"iPad Writes a New Game Plan for Concussions",
                       @"Teachers Use iPad to Enhance Learning in Special Education Across the Globe",
                       @"2014 NHL Playoffs: Teams Turning to High-Tech Analysis During Games",
                       @"Apple Updates MacBook Air",
                       @"Apple Reports Second-Quarter Results",
                       @"Apple Expands Capital Return Program to Over $130 Billion and Announces Seven-for-One Stock Split",
                       @"Apple Outlines Progress of Environmental Efforts",
                       @"Next-Generation Hearing Aids Tune In to iPhone",
                       @"Indiegogo Developers Go to Great Lengths to Resolve UITableView Scrolling Issues",
                       @"Using Tablets to Reach Kids With Autism",
                       @"Apple Worldwide Developers Conference Kicks Off June 2 in San Francisco",
                       @"Apple Leads Shift Toward Cleaner Internet",
                       @"San Francisco Giants Hope iBeacon Hits a Home Run with Fans",
                       @"iPad Writes a New Game Plan for Concussions",
                       @"Teachers Use iPad to Enhance Learning in Special Education Across the Globe",
                       @"2014 NHL Playoffs: Teams Turning to High-Tech Analysis During Games",
                       @"Apple Updates MacBook Air",
                       @"Apple Reports Second-Quarter Results",
                       @"Apple Expands Capital Return Program to Over $130 Billion and Announces Seven-for-One Stock Split",
                       @"Apple Outlines Progress of Environmental Efforts",
                       @"Next-Generation Hearing Aids Tune In to iPhone",
                       @"Indiegogo Developers Go to Great Lengths to Resolve UITableView Scrolling Issues",
                       @"Using Tablets to Reach Kids With Autism",
                       @"Apple Worldwide Developers Conference Kicks Off June 2 in San Francisco",
                       @"Apple Leads Shift Toward Cleaner Internet",
                       @"San Francisco Giants Hope iBeacon Hits a Home Run with Fans",
                       @"iPad Writes a New Game Plan for Concussions",
                       @"Teachers Use iPad to Enhance Learning in Special Education Across the Globe",
                       @"2014 NHL Playoffs: Teams Turning to High-Tech Analysis During Games",
                       @"Apple Updates MacBook Air",
                       @"Apple Reports Second-Quarter Results",
                       @"Apple Expands Capital Return Program to Over $130 Billion and Announces Seven-for-One Stock Split",
                       @"Apple Outlines Progress of Environmental Efforts",
                       @"Next-Generation Hearing Aids Tune In to iPhone",
                       @"Indiegogo Developers Go to Great Lengths to Resolve UITableView Scrolling Issues",
                       @"Using Tablets to Reach Kids With Autism",
                       @"Apple Worldwide Developers Conference Kicks Off June 2 in San Francisco",
                       @"Apple Leads Shift Toward Cleaner Internet",
                       @"San Francisco Giants Hope iBeacon Hits a Home Run with Fans",
                       @"iPad Writes a New Game Plan for Concussions",
                       @"Teachers Use iPad to Enhance Learning in Special Education Across the Globe",
                       @"2014 NHL Playoffs: Teams Turning to High-Tech Analysis During Games",
                       @"Apple Updates MacBook Air",
                       @"Apple Reports Second-Quarter Results",
                       @"Apple Expands Capital Return Program to Over $130 Billion and Announces Seven-for-One Stock Split",
                       @"Apple Outlines Progress of Environmental Efforts",
                       @"Next-Generation Hearing Aids Tune In to iPhone",
                       @"Indiegogo Developers Go to Great Lengths to Resolve UITableView Scrolling Issues",
                       @"Using Tablets to Reach Kids With Autism",
                       @"Apple Worldwide Developers Conference Kicks Off June 2 in San Francisco",
                       @"Apple Leads Shift Toward Cleaner Internet",
                       @"San Francisco Giants Hope iBeacon Hits a Home Run with Fans",
                       @"iPad Writes a New Game Plan for Concussions",
                       @"Teachers Use iPad to Enhance Learning in Special Education Across the Globe",
                       @"2014 NHL Playoffs: Teams Turning to High-Tech Analysis During Games",
                       @"Apple Updates MacBook Air",
                       @"Apple Reports Second-Quarter Results",
                       @"Apple Expands Capital Return Program to Over $130 Billion and Announces Seven-for-One Stock Split",
                       @"Apple Outlines Progress of Environmental Efforts",
                       @"Next-Generation Hearing Aids Tune In to iPhone",
                       @"Indiegogo Developers Go to Great Lengths to Resolve UITableView Scrolling Issues",
                       @"Using Tablets to Reach Kids With Autism",
                       @"Apple Worldwide Developers Conference Kicks Off June 2 in San Francisco",
                       @"Apple Leads Shift Toward Cleaner Internet",
                       @"San Francisco Giants Hope iBeacon Hits a Home Run with Fans",
                       @"iPad Writes a New Game Plan for Concussions",
                       ];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [self performSegueWithIdentifier:@"subview" sender:self];
    NSLog(@"Content Height: %f", self.tableView.contentSize.height);
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    NSLog(@"Content Height: %f", self.tableView.contentSize.height);
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.headlines.count;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    DynamicCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    cell.headlineLabel.text = _headlines[indexPath.row];
    return cell;
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    NSLog(@"Content Height: %f", self.tableView.contentSize.height);
}

@end
