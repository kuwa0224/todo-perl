package Todo::DataStore;
use strict;
use warnings;
use utf8;

use Todo;
use Todo::DB;
use Todo::DB::Schema;

my $schema = Todo::DB::Schema->instance;

sub db {
    my $conf = Todo->config->{DBI}
        or die "Missing configuration about DBI";

    Todo::DB->new(
        schema       => $schema,
        connect_info => [@$conf],
        # I suggest to enable following lines if you are using mysql.
        # on_connect_do => [
        #     'SET SESSION sql_mode=STRICT_TRANS_TABLES;',
        # ],
    );
}

1;
