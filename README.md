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
### Building and Installing

You can then build both applications with **make** or install them with **make install**. 

### Configuration

There's a config.json example provided with decent defaults. To run the application you 
just have to start it with **./eth-watchtower-supervisor -config config.json** in the target directory. 

### Tips and appreciations

***ETH/ERC20:*** 0x9b4FfDADD87022C8B7266e28ad851496115ffB48

***SOL:*** 68L4XzSbRUaNE4UnxEd8DweSWEoiMQi6uygzERZLbXDw

***BTC:*** bc1qkmzc6d49fl0edyeynezwlrfqv486nmk6p5pmta

