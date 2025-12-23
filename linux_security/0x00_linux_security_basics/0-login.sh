#!/bin/bash
grep "session opened" /var/log/auth.log | tail -n 5
