-module(app).
-export([sum/2, fall_velocity/1]).

sum(A,B) -> A + B.
fall_velocity(Distance) -> math:sqrt(2 * 9.8 * Distance).