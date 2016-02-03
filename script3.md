Hello, hello! I am Oleksii Fedorov, and this is the third
episode of TDD Screencast.

In last episode we have implemented a sorting algorithm
using TDD, without thinking about algorithm beforehand. As a
result, bubble sort have emerged.

We have noticed, that there is a small weird thing about
this implementation: it has unspecified behavior - mutation
of the original array.

So we asked, which algorithm would emerge, if we were to ban
such side-effects from our algorithm. Let´s find out!

```
./watch.sh
vim           # implement sorting algorithm
```

I think we are done here. If you look closely, it is a
quicksort. It is not the most memory-efficient
implementation, but that is something that is simple to
optimize (instead of passing recursively arrays, pass
original array and indexes). That optimization will involve
actual mutation of the array in place, so if we want to stay
true to our specification /show test for no-side-effects/.
We will have to copy the array once, using some sort of
wrapper function.

Applying this optimization I leave as an exercise to you my
users.

In the next episode we will look into path-finding problem,
and we will see, how these techniques apply there. See you
next time! Have a nice day.
