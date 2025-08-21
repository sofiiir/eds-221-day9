library(tidyverse)

starwars |> 
  group_by(hair_color) |> 
  filter(species == "Human")
 
ggplot(data = starwars, aes(x = species, y = hair_color)) +
  geom_bar()


#make a starwars subset
starwars_subset <- starwars |> 
  select(species, hair_color) |> 
  slice_head(n = 5)

datapasta:: df_paste(starwars_subset)

##CREATE REPREX
library(tidyverse)

starwars_error <- data.frame(
  stringsAsFactors = FALSE,
           species = c("Human", "Droid", "Droid", "Human", "Human"),
        hair_color = c("blond", NA, NA, "none", "brown")
)

ggplot(data = starwars_error, aes(x = species, y = hair_color)) +
  geom_bar()

``` r
library(tidyverse)

starwars_error <- data.frame(
  stringsAsFactors = FALSE,
  species = c("Human", "Droid", "Droid", "Human", "Human"),
  hair_color = c("blond", NA, NA, "none", "brown")
)

ggplot(data = starwars_error, aes(x = species, y = hair_color)) +
  geom_bar()
#> Error in `geom_bar()`:
#> ! Problem while computing stat.
#> ℹ Error occurred in the 1st layer.
#> Caused by error in `setup_params()`:
#> ! `stat_count()` must only have an x or y aesthetic.
```

<sup>Created on 2025-08-21 with [reprex v2.1.1](https://reprex.tidyverse.org)</sup>