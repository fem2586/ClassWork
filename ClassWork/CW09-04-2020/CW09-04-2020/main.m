//
//  main.m
//  CW09-04-2020
//
//  Created by Mac on 2020-04-09.
//  Copyright © 2020 classWork. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        - special variable: stores memory address
        int x = 10;
        int *pt = &x;
        pt = pt + 1
        ​
        char ch = 'a';
        char *pt2 = &ch;
        pt2++;
        ​
        int *arr;
        int arr[3];
        ​
        int arr_sum(int arr[], int len) {
            int total = 0;
            for (int i = 0; i < len; i++) {
                total += arr[i];
            }
            return total;
        }
        ​
        int arr_sum(int *arr, int len) {
            int total = 0;
            for (int i = 0; i < len; i++) {
                // dereference (content of)
                total += *(arr + i);
            }
            return total;
        }
        ​
        int x = 10;
        int *p = &x;
        // int p[];
        ​
        int **a = &p;
        int a[][];
        ​
        int **********a;
        int foo[10];
        foo : holds the mem address of the first element in array foo
        ​
        ​
        int *arr[10]; // creates an array of 10 pointers
        int (*arr)[10]; // creates a pointer to an array of 10 integers
        ​
        const int a = 10;
        int const a = 10;
        ​
        // integer cannot be modified (*p)
        const int *p; // creates a pointer to a constant int
        ​
        // pointer cannot be modified (p)
        int *const p; // creates a constant pointer to an interger
        ​
        // p can be modified, *p cannot be modified, **p can be modified
        int *const *p; // creates a pointer to a constant pointer to an integer
        ​
        // String is an array of chars that ends with '\0' (null char)
        {'1', '2', '3', '4', '5', '6', '7', '8', '9', '\0'}
        char str[10] = "123456789";
        char *str = "1234567890";
        char str[] = {'1', '2', '3', '4', '5', '6', '7', '8', '9', '\0'};
        ​
        ​
        // struct
        struct s {
            //... some variables
            int a;
            //... some variables
        };
        ​
        // Given a pointer to a member within a struct, how do you get
        // the pointer to the struct?
        struct s*get_s_ptr(int *a_ptr) {
            struct s tmp;
            return (struct s *) (a_ptr - (&tmp.a - &tmp));
        }
        ​
        // typedef struct {
        //     int a;
        //     int b;
        //     char c;
        // } s;
        ​
        struct s tmp;
        tmp.a = 10;
        tmp.b = 20;
        tmp.c = 'a';
        ​

        
        
        NSLog(@"Hello, World!");
    }
    return 0;
}
