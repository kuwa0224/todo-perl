package Todo::Web::Dispatcher;
use strict;
use warnings;
use utf8;
use Amon2::Web::Dispatcher::RouterBoom;
use Todo::DataStore::TodoList;

get '/' => sub {
    my $c = shift;
    my $dbh = $c->db;

    my $todo_list = Todo::DataStore::TodoList->index();

    return $c->render('index.tx', { todo_list => $todo_list });
};

1;
