#!/bin/sh

# Decrypt the file
# mkdir $HOME/.dvc/
# --batch to prevent interactive command
# --yes to assume "yes" for questions
gpg --quiet --batch --yes --decrypt --passphrase="$LARGE_SECRET_PASSPHRASE" \
--output $HOME/.dvc/service_account.json.gpg
