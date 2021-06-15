docker run ubuntu
docker ps
docker ps -a

docker run ubuntu sleep 5


## Scenario 1: Using CMD to run container for 5 seconds
# Using CMD inside a docker file to input commands
CMD["command","param1"]     or CMD command param1
CMD["sleep", 5]             or CMD sleep 5

docker build -t ubuntu-sleeper .
docker run ubuntu-sleeper
docker run ubuntu-sleeper sleep 10      #if you want to change it to 10 sec

## Scenario 2: Using ENTRYPOINT to run container for 10 seconds
# Using ENTRYPOINT 
ENTRYPOINT ["sleep"]

docker build -t ubuntu-sleeper .
docker run ubuntu-sleeper 10

## Scenario 3: Using CMD and ENTRYPOINT to run container for 5 seconds
ENTRYPOINT [sleep]
CMD ["5"]

docker build -t ubuntu-sleeper .
docker run ubuntu-sleeper           #by default it will run for 5 sec
docker run ubuntu-sleeper 10        #it would run for 10 sec overriding default

## Scenario 4: Change ENTRYPOINT 
docker run --entrypoint sleep2.0 ubuntu-sleeper 10

