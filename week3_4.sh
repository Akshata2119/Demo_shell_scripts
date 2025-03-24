#!/bin/bash


<<info

dispay username and user id from the systen

info

awk -F: '{print $1,$3}' /etc/passwd


