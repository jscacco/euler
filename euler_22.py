ALPHABET = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']

def getNames():
    File = open("names.txt", "r")
    names = []
    tempName = ""
    c = File.read(1)
    while True:
        if not c:
            return names
        if c == '"':
            if tempName != "":
                names.append(tempName)
                tempName = ""
        elif c != " " and c != ",":
            tempName += c
        c = File.read(1)
    return names

def scoreName(name):
    counter = 0
    lowername = name.lower()
    for c in lowername:
        counter += ALPHABET.index(c) + 1
    return counter
        
def main():
    """Does everything"""
    names = sorted(getNames())
    counter = 0
    for name in names:
        counter += scoreName(name) * (names.index(name) + 1)
    print(counter)
    #871198282
    
if __name__ == "__main__":
    main()
