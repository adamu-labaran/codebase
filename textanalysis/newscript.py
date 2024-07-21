'''
Use your new package to count the number of times the positive words 'good' or 'great' appear in the file 'hotel-reviews.txt'.
Use the package to count the number of times the negative words 'bad' or 'awful' appear.
'''

from textanalysis.textanalysis import count_words

# Count the number of positive words
# nb_positive_words = ____(____, ____)

# Count the number of negative words
# nb_negative_words = ____

print("{} positive words.".format(nb_positive_words))
print("{} negative words.".format(nb_negative_words))


# solution
from textanalysis.textanalysis import count_words

# Define the positive and negative words to count
positive_words = ['good', 'great']
negative_words = ['bad', 'awful']

# Path to the hotel reviews text file
file_path = 'hotel-reviews.txt'

# Count the number of positive words
nb_positive_words = count_words(file_path, positive_words)

# Count the number of negative words
nb_negative_words = count_words(file_path, negative_words)

print("{} positive words.".format(nb_positive_words))
print("{} negative words.".format(nb_negative_words))
# Fantastic! Now you can use this function without having to rewrite it. This allows you to spend more time building bigger, better, and more complex scripts, or to spend more time analyzing the results.
# Assuming count_words is imported
from textanalysis.textanalysis import count_words

# Define a function to count specific words
def count_specific_words(text, words):
    word_count = 0
    for word in words:
        word_count += text.lower().split().count(word)
    return word_count

# Load the hotel reviews data
with open('hotel-reviews.txt', 'r') as file:
    reviews = file.read()

# Define positive and negative words
positive_words = ['good', 'great']
negative_words = ['bad', 'awful']

# Count the number of positive words
nb_positive_words = count_specific_words(reviews, positive_words)

# Count the number of negative words
nb_negative_words = count_specific_words(reviews, negative_words)

print("{} positive words.".format(nb_positive_words))
print("{} negative words.".format(nb_negative_words))
# Fantastic! Now you can use this function without having to rewrite it. This allows you to spend more time building bigger, better, and more complex scripts, or to spend more time analyzing the results.