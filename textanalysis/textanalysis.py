# textanalysis/textanalysis.py
def count_words(filepath, words_list):
    with open(filepath, 'r') as file:
        text = file.read()

    word_counts = {word: 0 for word in words_list}

    for word in text.split():
        word_lower = word.lower()
        if word_lower in word_counts:
            word_counts[word_lower] += 1

    return word_counts
