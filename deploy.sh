#!/usr/bin/env bash

travis_fold start "testing travis_nanoseconds"
	ns1=$(travis_nanoseconds)
	echo "The current nanoseconds is: ${ns1}"
	ns2=$(travis_nanoseconds)
	elapsed=$((ns2-ns1))
	echo "${elapsed}ns have elapsed."
travis_fold end "testing travis_nanoseconds"

travis_fold start "timing a deployment"
	travis_time_start
		echo "About to sleep to simulate a deployment."
		sleep 3
		echo "Sleeping again..."
		sleep 5
		echo "Finished deployment."
	travis_time_finish
travis_fold end "timing a deployment"
