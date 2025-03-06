#!/bin/bash

##This shit was made by schizopup AKA Carrie

sudo killall openvpn
DIR="/home/$USER/Documents/vpn"

CA="${DIR}/Canada/"
US="${DIR}/US/"
DE="${DIR}/Germany/"
JP="${DIR}/Japan/"
GR="${DIR}/Greece/"
NE="${DIR}/Netherlands/"
NZ="${DIR}/NZ/"
RU="${DIR}/Russia/"
PL="${DIR}/Poland/"

CAVPN=("${CA}Montreal.ovpn" "${CA}Toronto.ovpn" "${CA}Vancouver.ovpn")
USVPN=("${US}Atlanta.ovpn" "${US}Dallas.ovpn" "${US}Detroit.ovpn" "${US}Miami.ovpn" "${US}Portland.ovpn" "${US}SF.ovpn" "${US}StLouis.ovpn" "${US}Chicago.ovpn" "${US}Denver.ovpn" "${US}LA.ovpn" "${US}NY.ovpn" "${US}Seattle.ovpn" "${US}SJ.ovpn" "${US}Washington.ovpn")
DEVPN=("${DE}Berlin.ovpn" "${DE}Frankfurt.ovpn")
JPVPN=("${JP}Tokyo.ovpn")
GRVPN=("${GR}Athens.ovpn")
NEVPN=("${NE}Amsterdam.ovpn")
NZVPN=("${NZ}Auckland.ovpn")
RUVPN=("${RU}Moscow.ovpn")
PLVPN=("${PL}Warsaw.ovpn")

RCAVPN=${CAVPN[$RANDOM % ${#CAVPN[@]}]}
RUSVPN=${USVPN[$RANDOM % ${#USVPN[@]}]}
RDEVPN=${DEVPN[$RANDOM % ${#DEVPN[@]}]}
RJPVPN=${JPVPN[$RANDOM % ${#JPVPN[@]}]}
RGRVPN=${GRVPN[$RANDOM % ${#GRVPN[@]}]}
RNEVPN=${NEVPN[$RANDOM % ${#NEVPN[@]}]}
RNZVPN=${NZVPN[$RANDOM % ${#NZVPN[@]}]}
RRUVPN=${RUVPN[$RANDOM % ${#RUVPN[@]}]}
RPLVPN=${PLVPN[$RANDOM % ${#PLVPN[@]}]}

read -p "Enter which region (CA, US, DE, JP, GR, NE, NZ, RU, PL) OR enter KILL to terminate the current instance : " VPN
echo
case $VPN in
CA)
  sudo openvpn --config ${RCAVPN} --auth-user-pass ${DIR}/auth
  ;;
US)
  sudo openvpn --config ${RUSVPN} --auth-user-pass ${DIR}/auth
  ;;
DE)
  sudo openvpn --config ${RDEVPN} --auth-user-pass ${DIR}/auth
  ;;
JP)
  sudo openvpn --config ${RJPVPN} --auth-user-pass ${DIR}/auth
  ;;
GR)
  sudo openvpn --config ${RGRVPN} --auth-user-pass ${DIR}/auth
  ;;
NE)
  sudo openvpn --config ${RNEVPN} --auth-user-pass ${DIR}/auth
  ;;
NZ)
  sudo openvpn --config ${RNZVPN} --auth-user-pass ${DIR}/auth
  ;;
RU)
  sudo openvpn --config ${RRUVPN} --auth-user-pass ${DIR}/auth
  ;;
PL)
  sudo openvpn --config ${RPLVPN} --auth-user-pass ${DIR}/auth
  ;;
KILL)
  echo "The vpn connection has been successfully terminated."
  ;;
esac
