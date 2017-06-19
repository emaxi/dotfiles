kill -9 `ps -ef | grep "matching" | grep -v grep | awk '{print $2}'`
