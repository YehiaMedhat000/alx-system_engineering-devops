#!/usr/bin/python3
""" Script to filter for the passwords only of 11 chars
    This filter helped hydra solve the challenge
    in almost no time!!!

    Reduced the number of possibilities in the dictionary
    from 14344391 possibility to only 865999 possibility """
import sys


if __name__ == "__main__":

    # Get the file you want to filter
    file = sys.argv[1]

    # Open the file
    with open(file, "r", encoding="latin-1") as passwords, open("rockless.txt", "w") as rockless:
        # Read its content
        content = passwords.readlines()

        for password in content:
            # If password without leading or preceding spaces 
            # is 11 chars long; accept it
            if len(password.strip()) == 11:
                rockless.write(password)
