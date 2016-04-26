-module(erlang_repo_app).
-behaviour(application).

-export([start/2]).
-export([stop/1]).

-spec start(boolean(), boolean()) -> ok.
start(Type, _Args) ->
    erlang_repo_sup:start_link().

stop(_State) ->
    ok.

