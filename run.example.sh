#!/bin/sh

### TODO: change the path if you are not in it
INSTALL_PATH=$PWD

### TODO: add hostname for server and client
server=
client=

### TODO: use the test you like
test_name="$INSTALL_PATH/ib_read_lat"
### TODO: use the options you like
options="-a  -d mlx5_0 --use_cuda=0"

_cmd="$test_name $options"
set -x

### Assuming we are already on the server
# launch server
$_cmd &

#run the client
ssh $client $_cmd $server
