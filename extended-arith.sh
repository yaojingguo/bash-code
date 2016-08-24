#!/usr/bin/env bash

decimal=15
octal=017
hex=0x0f

if [ "$decimal" -eq "$octal" ]; then
  echo "$decimal equals $octal"
else
  echo "$decimal is not equal to $octal"
fi

if [[ "$decimal" -eq "$octal" ]]; then
  echo "$decimal equals $octal"
else
  echo "$decimal is not equal to $octal"
fi

if [[ "$decimal" -eq "$hex" ]]; then
  echo "$decimal equals $hex"
else
  echo "$decimal is not equal to $hex"
fi
