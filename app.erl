-module(app).
-export([sum/2, fall_velocity/1, sum_and_divide/2]).
-import(other, [divide/2]).
sum(A,B) -> A + B.
fall_velocity(Distance) -> math:sqrt(2 * 9.8 * Distance).
sum_and_divide(A,B) -> divide(sum(A, B),B).