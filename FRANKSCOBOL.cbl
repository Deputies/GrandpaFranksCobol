IDENTIFICATION DIVISION.
PROGRAM-ID. SALES-MANAGER.

ENVIRONMENT DIVISION.
INPUT-OUTPUT SECTION.
FILE-CONTROL.
   SELECT SALES-FILE
      ASSIGN TO 'SALES.DAT'
      ORGANIZATION IS LINE SEQUENTIAL.

DATA DIVISION.
FILE SECTION.
FD  SALES-FILE.
01  SALES-RECORD.
   05  YEAR PIC 9(4).
   05  MONTH PIC 9(2).
   05  DAY PIC 9(2).
   05  AMOUNT PIC 9(6).

WORKING-STORAGE SECTION.
01  TOTAL-SALES PIC 9(9)V99 VALUE ZEROS.

PROCEDURE DIVISION.
OPEN INPUT SALES-FILE
PERFORM UNTIL EOF
   READ SALES-FILE
       INTO SALES-RECORD
       AT END SET EOF TO TRUE
   END-READ
   ADD AMOUNT TO TOTAL-SALES
END-PERFORM
CLOSE SALES-FILE

DISPLAY "Grandpa Frank's total yearly sales: $" TOTAL-SALES

STOP RUN.
