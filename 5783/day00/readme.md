# Database Setup

We are using an MS SQL Server 2019 instance.

## Steps to import the data

 - Execute the scripts 01..02 in order to create the tables
 - Import the csv files into the tables
    - for example it SSMS with flat file import
    - or convert to excel first and also use import in SSMS (excel imprt is less fiddly)
    - NOTE: duplicate line with customerid = 4308 needs to be deleted in noahs-customers.csv
 - Execute the scripts 10..14, to convert and clean up some data

## Solution (password for zip file)

01.01.2017 = 03.Tevet.5777

see https://www.hebcal.com/converter?gd=1&gm=1&gy=2017&g2h=1

