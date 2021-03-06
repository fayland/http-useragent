#!perl6

use v6;
use lib 'lib';
use Test;

use HTTP::UserAgent;

my $purl = 'http://purl.org/dc/elements/1.1/';

my $ua = HTTP::UserAgent.new;

my HTTP::Response $resp;

lives-ok { $resp = $ua.get($purl) }, "make request to '$purl' lives";
ok($resp.is-success, "request was successful");

ok($resp.content.defined, "and got some content back");


done-testing();
# vim: expandtab shiftwidth=4 ft=perl6
