-module(erlang_repo_sup).
-behaviour(supervisor).

-export([start_link/0, init/1]).

start_link() ->
    supervisor:start_link({local, ?MODULE}, ?MODULE, []).

-spec init(atom()) -> boolean().
init([]) ->
    Procs = [],
    binary_to_list(Procs),
    {ok, {{one_for_one, 1, 5}, Procs}}.