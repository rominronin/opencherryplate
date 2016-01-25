include <includes/library.scad>

/**
 * OPEN CHERRY PLATE - A simple tool for construction a plate file for cherry compatible switches
 * 
 * 
 * How To Use
 * ----------
 * There is currently only one function, the column function:
 * 
 * col($keys,$columnNumber,$columnShift);
 * 
 * $keys
 * The first number sets the number of keys in the column, eg. for a Planck, this would be 4.
 * 
 * $columnNumber
 * 1 for the first column, 2 for the second etc. You will need to declare the col function for each column in your plate.
 * 
 * $columnShift
 * This value determines how high/low the column will be shifted. For grid layouts, keep this value the same for each column. Otherwise, use multiples of a quarter (0.25) to shift the row up (+) or down (-). 
 * 
 * EXAMPLES
 * --------
 * Examples can be found in the README.md file.
 *
 */

col(5,1,-0.25);
col(5,2,0);
col(5,3,0.25);
col(5,4,0);
col(5,5,-0.25);
col(5,6,-0.25);
