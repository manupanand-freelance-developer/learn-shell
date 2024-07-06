# learn-shell
shell scripts for DevOps
# This repo is for DevOps journey.... 

## list of shell commands topics

1.Printing 
2.Variables
3.Conditions
4.Functions
5.Loops
6.SED Editor

## sed 
1.Delete a line
2.Add aline
3.Change a line
4.Search and replace a word


## Sed is availabele in two forms
1. Display the  changes on screen
```
sed 'ACTION ' file
```
2. Edit the file
```
sed -i 'ACTION' file

```
### Action criteria can be picked in two ways
1.Line Number based
2.String search based

Example like , if we wan to delete a line.

For line no criteria

```sed 'l d' file
```
<!-- l- line number, d-delete -->

For search string criteria

```
sed '/word/ d' file 

```

<!-- word-, and delete -->

Both the above examles will be just displaying the output, However if we want to edit the file

## Edit the file

```
sed -i 'ld' file
sed -i '/word/ d'file

```
