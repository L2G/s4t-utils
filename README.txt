This gem contains libraries and commands that are used in the
book _Everyday Scripting with Ruby_. It was created by the book's author,
Brian Marick.

A fair number of other Ruby gems rely on s4t-utils. But there is a problem:
it has not been updated in four years and it predates Ruby 1.9. So in some
situations it can fail and cause dependent gems to fail with it, relegating
them to Ruby 1.8.x.

In my opinion, the entire gem should be considered deprecated: new projects
should avoid using it, and old projects that still rely on it
should migrate away from it to current alternatives.

I've cloned the SVN repository from RubyForge with the idea of fixing it up so
it can run under 1.9. The long-term goal will be to make it functional while
loudly indicating that all methods in it are deprecated, and offer the
developer suggestions on other gems that can do the same things.

If you are looking for the last released version of the code, and you came
here because you couldn't find it anywhere else, you may download it here:

https://github.com/L2G/s4t-utils/zipball/rel-1.0.4 (.zip archive)
https://github.com/L2G/s4t-utils/tarball/rel-1.0.4 (.tar.gz archive)

--Lawrence Leonard Gilbert (2012-02-12)
