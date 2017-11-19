library(leaflet)

donut_icon <- makeIcon(
  iconUrl = "https://68.media.tumblr.com/2d13322c7de894b243de18e8025c9eee/tumblr_mrpt9uX42B1sfhneko1_500.png",
  iconWidth = 40, 
  iconHeight = 40
)

donut_data <- list(
  shop = c("Jupiter Coffee & Donuts", "Kelly's Bakery", "Martin's Donuts",
           "Milton's Donuts", "Mimi's Donuts & Bakery", "Oxford Doughnut Shoppe",
           "Ross Bakery", "Stan the Donut Man", "The Donut Spot"),
  lat = c(39.335671, 39.4209243, 39.4812661,
          39.500268, 39.3993578, 39.5085681,
          39.4224503, 39.3540151, 39.3390694),
  lng = c(-84.5310157, -84.5937745, -84.461134,
          -84.3693487, -84.6370217, -84.7521317,
          -84.5791865, -84.3984114, -84.5616336),
  popup = list(
    paste(sep = "<br/>",
          "<b><a href='https://www.yelp.com/biz/jupiter-coffee-and-donuts-fairfield'>Jupiter Coffee & Donuts</a></b>",
          "5353 Dixie Hwy",
          "Fairfield, OH 45014"
    ),
    paste(sep = "<br/>",
          "<b><a href='https://www.yelp.com/biz/kellys-bakery-hamilton'>Kelly's Bakery</a></b>",
          "1335 Main St",
          "Hamilton, OH 45013"
    ),
    paste(sep = "<br/>",
          "<b><a href='https://www.yelp.com/biz/martins-donuts-trenton'>Martin's Donuts</a></b>",
          "4 W State St",
          "Trenton, OH 45067"
    ),
    paste(sep = "<br/>",
          "<b><a href='https://www.yelp.com/biz/miltons-donuts-middletown'>Milton's Donuts</a></b>",
          "3533 Roosevelt Blvd",
          "Middletown, OH 45044"
    ),
    paste(sep = "<br/>",
          "<b><a href='https://www.yelp.com/biz/mimis-donuts-and-bakery-hamilton'>Mimi's Donuts & Bakery</a></b>",
          "2267 Millville Ave",
          "Hamilton, OH 45013"
    ),
    paste(sep = "<br/>",
          "<b><a href='https://www.yelp.com/biz/oxford-doughnut-shoppe-oxford'>Oxford Doughnut Shoppe</a></b>",
          "120 S Locust St",
          "Oxford, OH 45056"
    ),
    paste(sep = "<br/>",
          "<b><a href='https://www.yelp.com/biz/ross-bakery-hamilton-2'>Ross Bakery</a></b>",
          "1051 Eaton Ave",
          "Hamilton, OH 45013"
    ),
    paste(sep = "<br/>",
          "<b><a href='https://www.yelp.com/biz/stan-the-donut-man-west-chester'>Stan the Donut Man</a></b>",
          "7967 Cincinnati Dayton Rd",
          "West Chester, OH 45069"
    ),
    paste(sep = "<br/>",
          "<b><a href='https://www.yelp.com/biz/donut-spot-fairfield'>The Donut Spot</a></b>",
          "5148 Pleasant Ave",
          "Fairfield, OH 45014"
    )
  ),
  icon = makeIcon(iconUrl = "https://68.media.tumblr.com/2d13322c7de894b243de18e8025c9eee/tumblr_mrpt9uX42B1sfhneko1_500.png",
                  iconWidth = 60, 
                  iconHeight = 60)
)

m <- leaflet() %>%
  addTiles %>%
  addMarkers(
    lng = donut_data$lng, 
    lat = donut_data$lat, 
    label = donut_data$shop, 
    icon = donut_data$icon,
    popup = donut_data$popup,
    clusterOptions = markerClusterOptions()
  )

m