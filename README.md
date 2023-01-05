# GrandpaFranksCobol
Elite COBOL STRIKERS
Grandpa Frank's Yearly Sales
A COBOL program that calculates the total yearly sales for Grandpa Frank's business. The program reads records from a file called SALES.DAT, which should contain records with the following format:

Copy code
YYYYMMDDAMOUNT
For example, a record representing a sale made on January 5th, 2021 for $100 would be:

Copy code
202102050000100
Prerequisites
A COBOL compiler, such as OpenCOBOL
A text editor for editing the COBOL source code
Compiling and Running
To compile the program, use the following command:

Copy code
cobc -x -free sales-manager.cob
This will create an executable file called sales-manager.exe. To run the program, use the following command:

Copy code
./sales-manager.exe
Input
The program reads records from the SALES.DAT file, which should contain records with the format described above.

Output
The program displays the total yearly sales for Grandpa Frank's business. For example:

Copy code
Grandpa Frank's total yearly sales: $10000.00
Built With
OpenCOBOL - The COBOL compiler used
Author
[Your Name] - Initial work - GitHub
