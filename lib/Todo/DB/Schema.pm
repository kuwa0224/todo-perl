package Todo::DB::Schema;
use strict;
use warnings;
use utf8;

use Teng::Schema::Declare;

base_row_class 'Todo::DB::Row';

table {
    name 'todo_list';
    pk 'id';
    columns qw(id content created_at);
};

1;
