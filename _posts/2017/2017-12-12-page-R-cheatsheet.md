---

title:  "R cheasheet"
date:   2017-12-12 22:18:00
categories: cheatsheet,R
comments: true
permalink: r-cheatsheet
---


| Item                         | HOWTO                                    |
| ---------------------------- | ---------------------------------------- |
| CheatSheet                   | https://www.rstudio.com/wp-content/uploads/2016/10/r-cheat-sheet-3.pdf |
| Vector                       | create manually c(1,2,3) # => c is combine |
| function                     | `term.frequency <- function(row) { row / sum(row) }` <br />`apply(someMatrix, 1, term.frequency)` # 1: rows, 2: cols |
| new column with booleans     | `usedcars$conservative <-  usedcars$color %in% c("Black", "Gray", "Silver", "White")` |
| **Matrix**                   |                                          |
| Remove column                | `matrix[, -c[2,4]` # => remove columns 2,4 |
| Filter get indexes           | `indexes <- matrix(somedata$Label == `spam`) # => all indexes of spam. |
| **Inmem Data**               |                                          |
| Create matrix dataframe      | <script src="https://gist.github.com/tomer-ben-david/bd9b1433a79072d2c04e1dae4d1d6b2d.js"></script> |
| **Parsing Text**             |                                          |
| Read csv from url            | <script src="https://gist.github.com/tomer-ben-david/97e76f4563da8db978f5594d48bd61ad.js"></script> |
|                              |                                          |
| Read text file               | `mylog <- readLines("~./someserver.log")` |
| Remove two first lines       | `mylog <- mylog[3:length(mylog)]` // keep from line 3 to length |
| number of rows               | `nrow(mylog)`                            |
| grep                         | grep("INFO", my log, value = TRUE)       |
| search replace               | mylog_nofirst_space = sub("^\\s", "", mylog) # first space —> nothing |
| remove first line            | all_data <- all_data[-1] # remove element number 1 |
| lines not in indexes         | all_data[-rep_date_entries] # lines not in indexes in array rep_date_entries |
| text to table                | mytable <- read.table(text = non_date_lines) |
| add headers to my table      | names(mytable) <- c("action_id", "question_id", "rep_change") |
| extract substring            | with(data, str_extract(rep_change, "[0-9]+")) # data.rep_change column extract numers |
| str to number                | as.numeric(some_column)                  |
| update column inplace        | **dat$rep_change** <- with(dat, as.numeric(str_extract(rep_change, "[0-9]+"))) |
| how many lines between lines | * `actions_per_day <- c(rep_date_entries[1], diff(rep_date_entries)) - 1`<br />* ie. If some of the lines have dates and some not, then here we extract the indexes of all lines having date<br />* -1 at the end because we remove 1 from each result |
| Filter vector                | `actionsPerDay[actionsPerDay >= 0]` // only values larger than zero. |
| Add date to dateless lines   | * `dat$rep_date = rep(all_data[rep_date_entries], times = actions_per_day)`<br />* we know for each date how many times to repeat -> actions_per_day<br />rep means repeat, so repeat for dateless lines dat$rep_date<br />* new column added take the lines from all_data[rep_date_entries and for each such add] |
| string to date               | dat$rep_date = strptime(dat$rep_date, "%Y-%m-%d") |
| loop - apply                 | apply function over rows or cols of matrix `apply(mymatrix, 1, myfunc) # 1: do it on th erows of the my matrix |
| **Plot**                     | http://r-statistics.co/Top50-Ggplot2-Visualizations-MasterList-R-Code.html |
|                              | <script src="https://gist.github.com/tomer-ben-david/bd9b1433a79072d2c04e1dae4d1d6b2d.js"></script> |
| scatter plot                 | Explore relationship between 2 variables: `plot(x = carsData$year, y = carsData$price)` |
| Resoures                     |                                          |
| **NLP with R**               | https://www.youtube.com/watch?v=4vuw0AsHeGw |
| nlp package                  | Quanteda (tokenization, filtering, ..)   |

**Read log file and print line chart**

```r
df = read.table("~/tmp/heapmem.log", header = FALSE)
matplot(df$V4, type="l")
```

in column 4 we have the heapmem it will produce the linechart.

**Getting help and examples**

```r
help(read.table)
example(read.table)
vignettes() # PDF documentation on a topic.
vignettes(package = .packages(all.available = TRUE)) # include more non standard topics.
```

## Plotting

diamond data source

```
  carat       cut color clarity depth table price     x     y
  <dbl>     <ord> <ord>   <ord> <dbl> <dbl> <int> <dbl> <dbl>
1  0.23     Ideal     E     SI2  61.5    55   326  3.95  3.98
2  0.21   Premium     E     SI1  59.8    61   326  3.89  3.84
3  0.23      Good     E     VS1  56.9    65   327  4.05  4.07
```

plot the proportion of cut (without ..prop.. would simply count it)

```r
ggplot(data = diamonds) + geom_bar(mapping = aes(x = cut, y = ..prop.., group = 1))
```

## Log file analysis

install.packages("devtools")
library(devtools
install_github("kevinushey/rex")
library(rex)

http://www.mjdenny.com/Text_Processing_In_R.html

`diy <- grep("getAllForType.multithreaded", readLines("~/Downloads/diy-play-fail-log.html"), value = TRUE)`





When text data is in a nice CSV format, `read.csv` is enough to parse it into a useable format. But if this is not the case, getting the data into a useable format is not so straightforward. In this post I particularly illustrate the use of regular expressions for complex and flexible text processing, and the power of vectorization in R. Vectorization means that we operate on vectors as a whole, not operate on individual elements of a vector.

Take for example a snippet of this data which I downloaded [from StackOverflow](https://stackoverflow.com/reputation):

```
2  15466134 (10)
 2  15466134 (10)
 1  15462529 (15)
 2  13265177 (10)
 2  15475139 (10)
 2  15486973 (10)
-- 2013-03-18 rep +65   = 15552     
 2  14376993 (10)
 2  14376993 (10)
 2  14376993 (10)
 1  15493353 (15)
 2  12598625 (10)
 2  14376993 (10)
-- 2013-03-19 rep +65   = 15617     
 2  15520314 (10)
 2  15520314 (10)
-- 2013-03-20 rep +20   = 15637     
 1  15541210 (15)
 2  15541210 (10)
 2  15541210 (10)
 2  15541210 (10)
```

The entire data file can be downloaded [here](http://intamap.geo.uu.nl/~paul/transport/rep.dat).

In this post I’ll be stepping through the R code needed to get this text data into a useable format. First, we want to read the data into a character vector:

```
all_data = readLines("rep.dat")
head(all_data)
[1] "total votes: 2325" " 2   8150378 (10)" " 2   8167111 (10)"
[4] " 2   8167111 (10)" " 2   8167111 (10)" " 2   8167461 (10)"
```

where each element of the vector is a line in the the text file. Already we see that the first line is some header information which we want to skip:

```
all_data = all_data[-1]
```

note the use of negative indexing to remove an element. Next we want to find all the elements in the vector that relate to the date for which the data is representative, we do that by using a regular expression which looks for lines that start with `-`:

```
rep_date_entries = grep("^-", all_data)
```

and find the amount of actions, upvotes or downvotes etc, that have taken place on each day, i.e. the index of a certain day minus the index of the day before that:

```
actions_per_day = c(rep_date_entries[1], diff(rep_date_entries)) - 1
```

note that we add `rep_date_entries[1]` because `diff` cuts off the first element. Now that we know which elements relate to the date, we can read all other lines into a nice `data.frame`:

```
dat = read.table(text = all_data[-rep_date_entries])  
names(dat) = c("action_id", "question_id", "rep_change")
```

The reputation column has a somewhat strange format (`(10)`), we need to get rid of the brackets. A nice way of doing that is using a regular expression, and the `str_extract` function from the `stringr` package:

```
require(stringr)
dat$rep_change = with(dat, as.numeric(str_extract(rep_change, "-*[0-9]+")))
```

The regular expression `[0-9]+` matches one or more numbers, and `str_extract` gets the number out of the string. Now we have the data, we need to add a column which says for each row to which date it belongs. We know which lines in the data belong to a date (`rep_date_entries`) and we know how much data entries there are per day (`actions_per_day`). We can now simply repeat each element in `rep_date_entries` as many times as there are actions:

```
dat$rep_date = rep(all_data[rep_date_entries], times = actions_per_day)
head(dat)
  action_id question_id rep_change                             rep_date
1         2     8150378         10 -- 2011-11-17 rep +95   = 96
2         2     8167111         10 -- 2011-11-17 rep +95   = 96
3         2     8167111         10 -- 2011-11-17 rep +95   = 96
4         2     8167111         10 -- 2011-11-17 rep +95   = 96
```

You can see that the date is not yet in a nice format, we need to get rid of all the text, except the date itself. Again, we can use a regular expression, combined with `str_extract` for this:

```
dat$rep_date = str_extract(dat$rep_date, "[0-9]{4}-[0-9]{2}-[0-9]{2}")
```

The regular expression `"[0-9]{4}-[0-9]{2}-[0-9]{2}"` matches any occurence of 4 numbers-2 numbers-2 numbers. Finally, we transform the date from a string to a real date object using `strptime`:

```
dat$rep_date = strptime(dat$rep_date, "%Y-%m-%d")
```

The end result is the following `data.frame`:

```
head(dat)
  action_id question_id rep_change   rep_date
1         2     8150378         10 2011-11-17
2         2     8167111         10 2011-11-17
3         2     8167111         10 2011-11-17
4         2     8167111         10 2011-11-17
5         2     8167461         10 2011-11-17
6         1     8167461         15 2011-11-17
summary(dat)
   action_id       question_id         rep_change
 Min.   : 1.000   Min.   :  489821   Min.   :  0.000
 1st Qu.: 2.000   1st Qu.: 9521651   1st Qu.: 10.000
 Median : 2.000   Median :11738823   Median : 10.000
 Mean   : 2.336   Mean   :11475310   Mean   :  9.873
 3rd Qu.: 2.000   3rd Qu.:13175326   3rd Qu.: 10.000
 Max.   :16.000   Max.   :15541210   Max.   :100.000
    rep_date
 Min.   :2011-11-17 00:00:00
 1st Qu.:2012-04-08 00:00:00
 Median :2012-08-30 00:00:00
 Mean   :2012-08-02 19:55:59
 3rd Qu.:2012-11-16 00:00:00
 Max.   :2013-03-23 00:00:00
```

All this code together leads to the following function:

```
parse_so_rep_page = function(rep_file) {
   require(stringr)
   all_data = readLines(rep_file)
   all_data = all_data[-1]
   
   rep_date_entries = grep("^-", all_data)
   actions_per_day = c(rep_date_entries[1], diff(rep_date_entries)) - 1 
   
   dat = read.table(text = all_data[-rep_date_entries])
   names(dat) = c("action_id", "question_id", "rep_change")
   dat$rep_change = with(dat, as.numeric(str_extract(rep_change, "-*[0-9]+")))
   
   dat$rep_date = rep(all_data[rep_date_entries], times = actions_per_day)
   dat$rep_date = str_extract(dat$rep_date, "[0-9]{4}-[0-9]{2}-[0-9]{2}")
   dat$rep_date = strptime(dat$rep_date, "%Y-%m-%d")
   return(dat)
}
res = parse_so_rep_page("data/rep.dat")
```

I think this nicely illustrates the power of both vectorization, very short and to-the-point for-loop-less syntax, and regular expressions in editing strings.

