# Git word counter

Simple word counter between different git commits 


Git can be used for many applications,and currently I am using it to keep version of simple text. As a metric of how much work I am putting into my writing I had the idea of tracking word addition. Since I'm using separate files to write my text, as different chapters, it was harder to keep track of word change in the text-editor. I could not find an easy solution to see the amount of added words between my last commit and the current stage of the text, therefore, I wrote my own. 

At the moment the script only shows the added words before the last commit version and the current uncommitted changes.  In the future I might add more options to have a more in depth track of work done. 

If this might be helpful to you, give it a go!

### Dependencies

The script is a bash script running in Linux depending on:
* wc - [info](https://en.wikipedia.org/wiki/Wc_(Unix)
* Enable Colours in terminal (not critical)

### Usage
Make the script executable 
```javascript
$chmod +x wordcounter.sh
```
Call the script
```javascript
$./wordcounter.sh
```
An output example: 
```javascript
$ ./wordcounter.sh                                 
There are  4  changed files in this git repo
Amount of words added in file   Y_PHD_Thesis/Figure_List.txt  since last commit: 144 
Amount of words added in file   Y_PHD_Thesis/Acronyms.txt  since last commit: 6 
Amount of words added in file   Y_PHD_Thesis/Equalization.txt  since last commit: 1009 
Amount of words added in file   Y_PHD_Thesis/References.txt  since last commit: 134 
Total amount of words added in all files since last commit: 1293 
```

> What gets measured gets managed
> 
> -Peter Drucker 
