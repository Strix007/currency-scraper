#!/usr/bin/env bash

btc=$(curl -s 'https://coinmarketcap.com/currencies/bitcoin/' -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:104.0) Gecko/20100101 Firefox/104.0' --compressed | pup 'div.priceValue text{}')
ethereum=$(curl -s 'https://coinmarketcap.com/currencies/ethereum/' -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:104.0) Gecko/20100101 Firefox/104.0' --compressed | pup 'div.priceValue text{}')
bch=$(curl -s 'https://coinmarketcap.com/currencies/bitcoin-cash/' -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:104.0) Gecko/20100101 Firefox/104.0' --compressed | pup 'div.priceValue text{}')

echo "BITCOIN="$btc$'\n'"ETHEREUM="$ethereum$'\n'"BITCOIN-CASH="$bch
