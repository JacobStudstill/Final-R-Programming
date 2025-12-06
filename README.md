1. Overall introduction of the package <br> <br>
The package provides a simple way to summarize numeric data. The users supply a numeric vector, and the package returns mean, minimum, maximum, standard deviation, and median. These are the elementary things you learn for Stats. It uses an S3 system to store the summary and provides a custom print method. The custom print method provides a cleaner output for the user to understand.

2. How many unique functions does this package provide? <br> <br>
There are three unique functions used in this package. One function that calulates the vector into a stats summary. The second function prints the results from the first function. The last function plots the values and it should look similiar to this:

<img width="1598" height="884" alt="image" src="https://github.com/user-attachments/assets/2c29bfc9-0ae5-4f33-8e49-8dac1d6a4a6a" />


3. How many external libraries or dependencies does the package use? <br> <br>
I used the external library ggplot to help with plotting the data.

4. What metadata fields are included in the DESCRIPTION file? <br> <br>
Package, Type, Title, Version, Authors, Description, Imports, License, Encoding, LazyData, RoxygenNote

5. What license does the package use? <br> <br>
MIT License was used.

6. Which object systems (S3 vs. S4) and corresponding methods are implemented? <br> <br>
I used the S3 system to create a custom object called numSummary. This object stores the summary statistics (mean, min, max, standard deviation, and median) in a single list. S3 is simple to use for this because it lets me attach a class to the list and define special behavior for it.
<img width="468" height="636" alt="image" src="https://github.com/user-attachments/assets/5174b5c6-9ada-47f5-ad78-5a219d71f4c3" />
