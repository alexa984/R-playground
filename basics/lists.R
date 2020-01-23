# lists contain elements of different types 
# syntax: list(data)
v1 = c(5.678, 32.9, 54, 31.6)
v2 = c('hey', 'hello', 'bye')
v3 = c(TRUE, FALSE)
mylist = list(v1, v2, v3)

song = list("Some song", 190, 5)
name(song) = c("title", "duration", "track")
# equivalent is:
song = list(title = "Some song", duration = 190, track=5)
# str(song)
song[1]  # gives subset list of 1 element
song[[1]]  # get the value of first element of list
song[c(1,3)]  # gives list with 1-st and 3-rd value of song list

# following are equivalent:
song["duration"]
song[["duration"]]
song[[2]]

song[c(FALSE, TRUE, TRUE, FALSE)]  # subset by logicals

friends = c("Alex", "Bobby", "Jim")
song$sent = friends  # $ can be used only with named lists. Equivalent to `song[["sent"]] = friends

similar_song = list(title = "Some song2", duration = 190, track=5)

# list in list
playlist  = list(song, similar_song)
playlist[[2]][[1]]  # gives the title of second song
# str(playlist)
