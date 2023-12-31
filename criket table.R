library(rvest)
library(dplyr)
library(robotstxt)
library(stringr)

url <- "https://www.firstpost.com/firstcricket/teams-ranking"
path = paths_allowed(url)
web<- read_html(url)
View(web)
rank = web%>% html_nodes("td:nth-child(1)")  %>% html_text()                   
View(rank)
Team = web%>% html_nodes("td:nth-child(2)") %>% html_text() 
View(Team)
matches = web%>% html_nodes("td:nth-child(3)")  %>% html_text() 
View(matches)
point = web%>% html_nodes("td:nth-child(4)") %>% html_text() 
View(point)
rating = web%>% html_nodes("td:nth-child(5)") %>% html_text() 
View(rating)
criket = data.frame(rank,Team,matches,point,rating)
View(criket)
write.csv(criket,"imdb_criket1.csv")
str(criket)
