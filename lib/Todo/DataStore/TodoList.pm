package Todo::DataStore::TodoList;
use strict;
use warnings;
use utf8;
use parent qw/Todo::DataStore/;

sub index {
    my ($class) = @_;

    my @todo_list;
    my $itr = $class->db->search('todo_list', +{}, +{ order_by => 'created_at' });

    while (my $todo = $itr->next) {
        push(
            @todo_list,
            +{
                id         => $todo->id,
                content    => $todo->content,
                created_at => $todo->created_at,
            }
        );
    }

    return \@todo_list;
}

1;
