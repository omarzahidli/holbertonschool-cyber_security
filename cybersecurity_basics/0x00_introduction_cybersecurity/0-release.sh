#!/bin/bash
grep "^ID=" lsb-release | cut -d'=' -f2
