#please don't use key in here for your apps.

library(httr)
myapp<- oauth_app("twitter",
                 key = "VJQLiCSVwlMMieho1esYLsfpn",
                 secret="R24tlB1UT2d0pKTwv7VcCpHxX4d5YV5LO5bP9wwRgUCkPVu73k") # consumer key and consumer secret
                    

sig <- sign_oauth1.0(myapp,
                      token= "1279530378-lOgk4GfvynvechMH53G1OdLcKl5S76V7eSnSzG5",
                      token_secret= "mr1dqNqJEh1QWR2h8gUrvmCibIS8mzEzt75cupxkQPJws")
                      #token

homeTL <- GET("https://api.twitter.com/1.1/statuses/home_timeline.json")
# run in R console (saved workplace image before switch to Rstudio again). Rstudio will timed out
            # read timeline
#https://api.twitter.com/1.1/statuses/home_timeline.json

json1=content(homeTL)