I don't like to copy/pasta stuff too much

I had a common thing where I need to ssh to 3 things at the same time to do the same thing at the
same time.

I did not like the amount of copy paste

how to set this up:

```
    chmod +x ./cerberus/*.sh
```

(if the command above does not work, please add +x to all the .sh files there lol)

then do `./cerberus/run.sh`

if I ever need some other functionality I will write more but for now this is all this repo has.

Something you can do to improve this workflow is to save an ssh key so you don't need to put a
password all the time cause that sucks

I'm not doing that here

also I'm calling the script "cerberus" cause it makes 3 heads and all that stuff

do not attach your password to the ssh command cause that's not secure. you have been warneded
