letters = ["+", " ", "%20"]

def processString(string):
    for letter in letters:
        string = string.relace(letter, "")
    string = string.lower()
    return string