################
# Touching temporary file so multiple vagrant provision runs doesn't
# update LD_LIBRARY_PATH with the same path multiple times.
#
# Could be changed to a check to verify that a specific folder already
# in the LD_LIBRARY_PATH...but this works for now.
################
OUTPUT_FILE=$HOME/.profile

if [ ! -f $HOME/run_only_once.vagrant-provisioning ]; then
cat >> $OUTPUT_FILE << 'EOL'
LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/usr/local/lib64
export LD_LIBRARY_PATH
EOL

    touch $HOME/run_only_once.vagrant-provisioning
fi
