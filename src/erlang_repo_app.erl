-module(erlang_repo_app).
-behaviour(application).

-export([start/2]).
-export([stop/1]).

start(Type, _Args) ->
    list_to_binary(Type),
    erlang_repo_sup:start_link().

stop(_State) ->
    ok.

