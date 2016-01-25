THIS IS A WORK IN PROGRESS
@todo: Expand description, links, references etc.

OPEN CHERRY PLATE - A simple tool for construction a plate file for cherry compatible switches


Pre-requisite
-------------
Though you can edit it in any text editor, you will need to download OpenSCAD to render a 3D image, or output print ready files. (http://www.openscad.org/downloads.html)


How To Use
----------
There is currently only one function, the column function:

col($keys,$columnNumber,$columnShift);

$keys
The first number sets the number of keys in the column, eg. for a Planck, this would be 4.

$columnNumber
1 for the first column, 2 for the second etc. You will need to declare the col function for each column in your plate.

$columnShift
This value determines how high/low the column will be shifted. For grid layouts, keep this value the same for each column. Otherwise, use multiples of a quarter (0.25) to shift the row up (+) or down (-). 


Upcoming Features
-----------------
I would like to improve this tool in the future, with the following ideas currently in mind:
 * simplify the code, so that someone with little or no coding experience can quickly create their own plate design.
 * add a variety of popular switch templates, eg. ALPs
 * 


EXAMPLES : Planck
----------------
A Planck is an ortholinear keyboard, with a 12 by 4 grid.

col(4,1,0);
col(4,2,0);
col(4,3,0);
col(4,4,0);
col(4,5,0);
col(4,6,0);
col(4,7,0);
col(4,8,0);
col(4,9,0);
col(4,10,0);
col(4,11,0);
col(4,12,0);