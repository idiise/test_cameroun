library(tidyverse)
library(echarts4r)

data("mtcars")
mtcars <- mtcars |> rownames_to_column()
simple <- head(mtcars)

simple |> e_chart(x = rowname) |> 
  e_line(mpg) |> 
  e_labels()
