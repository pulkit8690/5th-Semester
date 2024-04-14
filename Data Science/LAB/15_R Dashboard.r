---
#YAML - Yet Another Markup Language
#YAML HEADER section is enclosed by three dashes as shown here.
title: "IRIS Dataset Deshboard"
output: 
  flexdashboard::flex_dashboard:
    orientation: columns
    vertical_layout: fill
---

```{r setup, include=FALSE}
library(flexdashboard)
```

# \# Page 1

## Column {data-width="650"}

### Chart A

```{r}
library(ggplot2)
df=iris
df
  ggtitle("Graph between Sepal.Length and Sepal.Width")
  
  #plot(df.Sepal.Length,df.Sepal.Width)
```

## Column {data-width="350"}

### Chart B

```{r}
plot(df$Sepal.Length, df$Sepal.Width)
```

### Chart C

```{r}
boxplot(df)
```

# \# Page 2

## Species of Flowers {.tabset}

### Count of Species

```{r}

```

### Setosa Species

```{r}
  hist(df$Petal.Length)

```

## Column {data-width="650"}

### Chart A

```{r}

```

## Column {data-width="350"}

### Chart B

```{r}

```

### Chart C

```{r}
 boxplot(df)
```

# Setosa {data-navmenu="Select Category"}
```{r} 
library(dplyr)
   filter(df, Species == "setosa")
```
# Versicolor {data-navmenu="Select Category"}

```{r} 
   filter(df, Species == "versicolor")
```
# Virginica {data-navmenu="Select Category"}
```{r} 
   filter(df, Species == "virginica")