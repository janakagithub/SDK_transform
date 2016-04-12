use SDK_transform::SDK_transformImpl;

use SDK_transform::SDK_transformServer;
use Plack::Middleware::CrossOrigin;



my @dispatch;

{
    my $obj = SDK_transform::SDK_transformImpl->new;
    push(@dispatch, 'SDK_transform' => $obj);
}


my $server = SDK_transform::SDK_transformServer->new(instance_dispatch => { @dispatch },
				allow_get => 0,
			       );

my $handler = sub { $server->handle_input(@_) };

$handler = Plack::Middleware::CrossOrigin->wrap( $handler, origins => "*", headers => "*");
