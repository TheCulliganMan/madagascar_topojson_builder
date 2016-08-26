# Madagascar Topojson Builder
Builds topojson files for madagascar
##What it does:
This program builds topojson files for the country of Madagascar.
##How to install:
 1. Install nodejs, npm, and GDAL
  To install GDAL:
  
  On Ubuntu:
  
  $ `sudo add-apt-repository ppa:ubuntugis/ppa && sudo apt-get update`
  
  $ `sudo apt-get install gdal-bin`
  
  On mac:
  
  $ `brew install gdal`
  
  
 2. Clone the repo:
 ```
 git clone https://github.com/TheCulliganMan/madagascar_topojson_builder.git
 ```
 
 3. Enter the directory and make:
 ```
 cd madagascar_topojson_builder && make all
 ```
 
##Cleanup
Should you need to clean up the json and shapefiles, just enter the madagascar_topojson_builder directory and type:
```
make clean
```
