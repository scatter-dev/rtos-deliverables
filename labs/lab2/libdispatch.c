/*
 * Copyright 2018 Jonathan Anderson
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include <err.h>
#include <locale.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <dispatch/dispatch.h>


void increment(int *countp);

dispatch_semaphore_t semaphore;

int
main(int argc, char *argv[])
{
	dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
	dispatch_group_t group = dispatch_group_create();
	semaphore = dispatch_semaphore_create(1);
	int counter = 0;
	struct timespec begin, end;

	// Set C locale settings to get niceties like thousands separators
	// for decimal numbers.
	setlocale(LC_NUMERIC, "");

	if (clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &begin) != 0)
	{
		err(-1, "Failed to get start time");
	}

	for (int i = 0; i < JOBS; i++)
	{
		dispatch_group_async_f(group, queue, &counter, increment);
	}
	dispatch_group_wait(group, DISPATCH_TIME_FOREVER);
	if (clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &end) != 0)
	{
		err(-1, "Failed to get end time");
	}

	long diff = end.tv_nsec - begin.tv_nsec;
	diff += (1000 * 1000 * 1000) * (end.tv_sec - begin.tv_sec);

	printf("Counted to %'d in %'ld ns: %f ns/iter\n",
	       JOBS * WORK_PER_JOB, diff, ((double) diff) / counter);

	return 0;
}

void increment(int *countp)
{
	for (int i = 0; i < WORK_PER_JOB; i++)
	{
		dispatch_semaphore_wait(semaphore, DISPATCH_TIME_FOREVER);
		(*countp)++;
		dispatch_semaphore_signal(semaphore);
	}
}