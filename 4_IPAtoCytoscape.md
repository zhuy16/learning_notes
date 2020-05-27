# Export IPA network to Cytoscape for network analysis. 

A brief description, 
 
1. You can “Export Data” the IPA pathway window, to export each pathway as network as two files, 
	All_Molecules.xls
	All_Relationships.xls
 
2. To convert the .xls file to .csv file, that can be imported to Cytoscape:
	a. Install a program called Gnumeric
	b. Use a utility of Gnumeric, "ssconvert" to convert these .xls files to .csv files. 
	(note that the .csv file is well generated this way. If you try to export a .txt from IPA and resave it as .csv in excel, the .csv file will be a corrupted one)
 
3. You could import the All_Relationships.csv file to Cytoscape as a new network. And import the All_Molecules.xls as table information, you can then map the fold changes to molecules for showing pathway activity. 
 
4. Then you can repeat this process for another pathway. 
 
5. The cystoscope will allow you to merge two networks (by Tools-->merge networks). 

