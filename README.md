## This is a meta-repository for the eth-watchtower and eth-watchtower-supervisor programs

To update the applications to the latest versions, run the following commands:

```
git pull --recurse-submodules
git submodule update --remote --merge

```

To make it automatic, you can set

```
git config --global submodule.recurse true
git pull
```


You can then build both applications with **make** or install them with **make install**. 

There's a config.json example
