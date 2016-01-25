/**
 * Contains code for the switch template, and parameters for constructing a plate.
 */

$fa = 1;
$fn = 256;
$fs = 1;

/**
 * Variables.
 **/

// Cavity radius.
r1 = .5;
// Cavity height.
h1 = 1.5;
// Plate height.
h2 = 4;

// Notch 1 width.
nx = 4;
// Notch 1 height.
ny = .8;
// Notch 1 depth.
nz = h2-h1;

// Notch 2 width.
Nx = .8;
// Notch 2 height.
Ny = 6.25;
// Notch 2 depth.
Nz = h2;

// Distance from origin.
d = 15.6 - (2*r1);

/**
 * Cavity corners.
 **/
module corner1(){
    cylinder(h2+0.02,r1,r1);
}

/**
 * Switch cavity.
 **/
module cavity(){
    difference(){
        translate([0,0,-0.01]) hull(){
            translate([0,ny,0]) corner1();
            translate([d,ny,0]) corner1();
            translate([0,d-ny,0]) corner1();
            translate([d,d-ny,0]) corner1();
        }

    // Notch - right.
        translate([(d+r1-Nx),(d-Ny)/2,-0.01]) cube([Nx,Ny,Nz+0.02]);
    // Notch - left.
        translate([-r1,(d-Ny)/2,-0.01]) cube([Nx,Ny,Nz+0.02]);
    }
}
//cavity();
/**
 * Switch frame.
 **/
module keyhole(){
    difference(){
        translate([r1-2.75,r1-2.75,0]) cube([19,19,h2]);
        cavity();
    // Notch - top.
        translate([(d-nx)/2,(d-ny+r1-0.01),1.5]) cube([nx,ny,nz+0.01]);
    // Notch - bottom.
        translate([(d-nx)/2,0.01-r1,1.5]) cube([nx,ny,nz+0.01]);
    }
}
  //keyhole();
/**
 * Module for making a row.
 **/
module col(keys,col,shift){
    translate([19*(col),19*(shift),0]){
      for (i = [1:keys]){
        translate([0,19*(i-1),0]) keyhole();
      }
    }
}
/**
 * Make make a plate with Rx columns and Ry rows.
 **/
/*
module rows(Rx,Ry){
  for (i = [1:Ry]) {
    translate([0,19*i,0]) col(Rx);
  }
}
rows(7,5);*/