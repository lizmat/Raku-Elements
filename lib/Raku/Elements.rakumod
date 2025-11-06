class Raku::Element:ver<0.0.1>:auth<zef:lizmat> {
    has str $.name;
    has str @.alternates;
    has str $.tagline;
    has str $.description;
    has     @.tags;

    method TWEAK(--> Nil) { @!tags := @!tags.List }

    method rakudoc(Raku::Element:D: --> Str:D) {
        my str @parts = "=head2 $!name - $!tagline\n";
        @parts.push: "=item tags - @!tags[]\n";
        @parts.push: "\n$!description\n" if $!description;
        @parts.push: "\n";
        @parts.join
    }
}

class Raku::Elements:ver<0.0.1>:auth<zef:lizmat> {
}

# vim: expandtab shiftwidth=4
