-module(erlang_repo_sup).
-behaviour(supervisor).

-export([start_link/0]).

-spec start_link() -> ok.
start_link() ->
    % tooooo loooooooooong lineeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
    % UnUsedVar = nothing,
    supervisor:start_link({local, ?MODULE}, ?MODULE, []).

init([]) ->
    Procs = [],
    {ok, {{one_for_one, 1, 5}, Procs}}.