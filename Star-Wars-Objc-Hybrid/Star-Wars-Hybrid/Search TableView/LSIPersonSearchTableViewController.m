//
//  LSIPersonSearchTableViewController.m
//  Hybrid Star Wars Search
//
//  Created by Spencer Curtis on 1/28/19.
//  Copyright © 2019 Spencer Curtis. All rights reserved.
//

#import "LSIPersonSearchTableViewController.h"
#import "LSIPerson.h"
#import "Star_Wars_Hybrid-Swift.h"

// TODO: 1. Add both PersonController.swift and PersonTableViewCell.swift to the target
// TODO: 2. Fix the missing class using the bridging header issue
// TODO: 3. Import the Auto-generated "Module_Name-Swift.h" header file (always in the .m file)

@interface LSIPersonSearchTableViewController () <UISearchBarDelegate>

@property (nonatomic) NSArray<LSIPerson *> *people;

// TODO: Create a PersonController.swift and make it an instance variable

@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;

@end

@implementation LSIPersonSearchTableViewController

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
	// TODO: Implement number of rows
	
    return self.people.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

	
	// TODO: Implement a custom cell named PersonTableViewCell.swift
    
	
	LSIPersonTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PersonCell" forIndexPath:indexPath];
    
	// TODO: Set the cell to the current Person object
    LSIPerson *person = [self.people objectAtIndex:indexPath.row];
    
    cell.person = person;
	
    return cell;
}

- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar {
    
	
    // TODO: Search for a person using the searchBar.text
    [LSIPersonController.sharedController searchForPeopleWithSearchTerm:searchBar.text completionHandler:^(NSArray<LSIPerson *> *people, NSError *error) {
        if (error) {
            NSLog(@"Error searching for %@: %@", searchBar.text, error);
        }
        
        self.people = people;
        [self.tableView reloadData];
    }];
    
	// TODO: Save the result and have the UI update itself
}

@end
