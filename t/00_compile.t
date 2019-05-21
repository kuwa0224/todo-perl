use strict;
use warnings;
use Test::More;


use Todo;
use Todo::Web;
use Todo::Web::View;
use Todo::Web::ViewFunctions;

use Todo::DB::Schema;
use Todo::Web::Dispatcher;


pass "All modules can load.";

done_testing;
