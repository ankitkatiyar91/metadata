# metadata
R package for creating metadata of a dataframe.

Currently this package have only one function that can generate metadata of a data frame.

### usage:
```r
metadata::generateMeta(iris)
```

### Output:
<pre>
          name na_Count blanks unique min max range medians mean mode
1 Sepal.Length        0      0     35 4.3 7.9   3.6    5.80 5.84  5.0
2  Sepal.Width        0      0     23 2.0 4.4   2.4    3.00 3.06  3.0
3 Petal.Length        0      0     43 1.0 6.9   5.9    4.35 3.76  1.4
4  Petal.Width        0      0     22 0.1 2.5   2.4    1.30 1.20  0.2
5      Species        0      0      3 0.0 0.0   0.0    0.00 0.00  0.0
</pre>

### features:

As of now it generates finds out *NA* counts, blanks, unique for all the columns and for numeric columns it also gives 
*min, max, range, median,mean, mode*

*generateMeta* function returns a dataframe so you can also store it and use it. Below peace also gives the same output.

### usage:
```r
iris_meta <- metadata::generateMeta(iris)
iris_meta
```

### Output:
<pre>
          name na_Count blanks unique min max range medians mean mode
1 Sepal.Length        0      0     35 4.3 7.9   3.6    5.80 5.84  5.0
2  Sepal.Width        0      0     23 2.0 4.4   2.4    3.00 3.06  3.0
3 Petal.Length        0      0     43 1.0 6.9   5.9    4.35 3.76  1.4
4  Petal.Width        0      0     22 0.1 2.5   2.4    1.30 1.20  0.2
5      Species        0      0      3 0.0 0.0   0.0    0.00 0.00  0.0
</pre>
