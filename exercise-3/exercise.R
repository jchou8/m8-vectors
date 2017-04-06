# Exercise 3: Vector and function practice

# Create a vector `marbles` with 6 different colors in it (representing marbles)
marbles <- c("red", "orange", "yellow", "green", "blue", "purple")

# Use the `sample` function to select a single marble
print(sample(marbles, 1))

# Write a function MarbleGame that does the following:
# - Takes in a `guess` of a marble color
# - Randomly samples a marble
# - Returns whether or not the person guessed accurately (preferrably a full phrase)
MarbleGame <- function(guess) {
  marble <- sample(marbles, 1)
  
  if (guess == marble) {
    return ("You guessed correctly!")
  } else {
    return ("You guessed incorrectly.")
  }
}

# Play the marble game!
MarbleGame("green")

# Bonus: Play the marble game until you win, keeping track of how many tries you take
tries <- 0
while (MarbleGame("green") != "You guessed correctly!") {
  tries <- tries + 1
}
print(tries)

## Double bonus(answer not provided): play the game 1000X (until you win) and track the average number of tries
# Is it what you expected based on the probability
wins <- 0
tries <- 0
while (wins < 1000) {
  while (MarbleGame("green") != "You guessed correctly!") {
    tries <- tries + 1
  }
  wins <- wins + 1
}
average.tries <- tries / wins
print(average.tries)