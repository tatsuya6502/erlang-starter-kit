%%% -*- mode: erlang -*-

Home = os:getenv("HOME").

%% io:format("Reading ~s... ", [filename:join([Home, "/.erlang"])]).

Lib = filename:join(Home, ".erlang.d/lib/").

true = code:add_pathz(filename:join(Lib, "edown/ebin")).
true = code:add_pathz(filename:join(Lib, "eper/ebin")).
true = code:add_pathz(filename:join(Lib, "meck/ebin")).

%% true = code:add_pathz(filename:join(Lib, "eqc/ebin"). % quick check mini
%% true = code:add_pathz(filename:join(Lib, "proper/ebin"). % PropEr won't work with Hibari's test cases

QuickCheck = filename:join(Home, "workbrew/lib/erlang/lib/").

true = code:add_pathz(filename:join(QuickCheck, "eqc-1.24.4/ebin")).
true = code:add_pathz(filename:join(QuickCheck, "pulse-1.24.4/ebin")).
true = code:add_pathz(filename:join(QuickCheck, "eqc_mcerlang-1.24.4/ebin")).

%% {module,user_default} = code:load_abs(
%%                          filename:join([Home, "/.erlang_modules/serge/user_default"])).

%% io:format("OK.~n~n").
