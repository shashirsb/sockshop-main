#!/bin/bash -x
# Copyright 2019, Oracle Corporation and/or its affiliates. All rights reserved.

WALLET_LOCATION=$HOME/Wallet_sockshopdb
kubectl create secret generic atp-secret -n alpha-office --from-file=ojdbc.properties=$WALLET_LOCATION/ojdbc.properties --from-file=tnsnames.ora=$WALLET_LOCATION/tnsnames.ora --from-file=sqlnet.ora=$WALLET_LOCATION/sqlnet.ora --from-file=cwallet.sso=$WALLET_LOCATION/cwallet.sso --from-file=ewallet.p12=$WALLET_LOCATION/ewallet.p12 --from-file=keystore.jks=$WALLET_LOCATION/keystore.jks --from-file=truststore.jks=$WALLET_LOCATION/truststore.jks --from-file=atp_password.txt=$WALLET_LOCATION/atp_password.txt
