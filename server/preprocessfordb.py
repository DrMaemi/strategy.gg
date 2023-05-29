letters = ["+", " ", "%20"]

def processString(string):
    for letter in letters:
        string = string.replace(letter, "")
    string = string.lower()
    return string