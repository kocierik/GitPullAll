## gitPullAll

This script will find all Git repositories under your home directory and update them accordingly. It switches to the main branch and pulls the latest changes if the `-m` flag is provided; otherwise, it updates the current branch.

### Usage
Give <b>permission</b>:
```
chmod +x gp.sh
```

add to somewhere in your <b>path</b>
```
/usr/local/bin/
```


This script accepts an optional `-m` flag to indicate that you want to pull the main/master branch instead of the current branch

To update all repositories with their current branches:

```
./gp.sh
```

To update all repositories with the main/master branch:
```
./gp.sh -m
```


