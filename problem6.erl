-module(problem6).
-export([solve/0]).

squareOfSum(N) ->
  S = lists:sum(lists:seq(1, N)),
  S * S.

sumOfSquares(N) ->
  lists:sum([X * X || X <- lists:seq(1, N)]).

solve() ->
  io:fwrite("~p~n", [squareOfSum(100) - sumOfSquares(100)]).
