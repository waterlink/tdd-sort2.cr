Hello, hello! I am Oleksii Fedorov, and this is the second episode of
Test-Driven-Development Screencast.

Now that I think about it, first episode was more of an audio podcast (with two
and half visual slides), rather than a screencast. Don´t worry - this episode
will be full of code and actual action time on the screen.

Today we are going to implement a sorting algorithm. We will not come up with
algorithm beforehand and we will simply let it emerge by itself, while we are
doing TDD.

Lets jump in!

```
./watch.sh  # So I have here small script, that will watch changes in my code
            # and will run all my tests. Additionally, it will show me the
            # result in the notification bar (you will see, shortly).

vim         # 1) Create test file
            # 2) Follow TDD rules to the letter
```

I think we are done here. And notice, that this is a bubble sort algorithm. Now
lets ask a question, why the worst possible algorithm have emerged, while we
were using TDD. That is an interesting question.

But first, lets ask ourselves a question: Are we kind to the user of our
function? The answer is - NO. We are mutating the argument, that user passed to
us. And this mutation might be unexpected. At least our test suite doesn´t even
mention such behavior.

The root of the problem is this little swap operation that we have here:

```
# show swap operation on the screen
```

I wonder, what will happen if we were to ban swap operation (and any kind of
mutation of the argument of the function), and implement sorting algorithm
again?

Find out next time, on the next episode of Test-Driven-Development! Have a good
day.
