# attack_is_the_best_defense project

For the dictionary attack you need to find some password dictionary to use with `hydra`
on the port 2222 and username of sylvain, I used rockyou.txt, but as it's so big for
`hydra` to handle, and you're given that the password is only 11 chars long, I used a python
script to filter the number of passwords to decrease by about 13 million possibility!!!
which let `hydra` to solve the password in the 1 to 2 seconds of execution
