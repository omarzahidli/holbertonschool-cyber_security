#!/bin/bash
grep "^ID=" /etc/lsb-release | cut -d'=' -f2
