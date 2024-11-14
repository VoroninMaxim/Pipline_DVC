#!/bin/sh

chmod +x ./decrypt_secret.sh 
# --batch to prevent interactive command
# --yes to assume "yes" for questions
gpg --quiet --batch --yes --decrypt --passphrase="$LARGE_SECRET_PASSPHRASE" \
--output ./.dvc/service_account.json ./.dvc/service_account.json.gpg

# Check if decryption was successful
if [ $? -eq 0 ]; then
    echo "Decryption successful!"
else
    echo "Decryption failed. Please check if the correct keys are available and if the file is valid."
    exit 1
fi
