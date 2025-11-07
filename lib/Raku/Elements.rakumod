class Raku::Element:ver<0.0.1>:auth<zef:lizmat> {
    has str $.name;
    has str @.alternates;
    has     @.tags;
    has str $.tagline;
    has str $.description;

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
    method elements-from-io($io) {
        my @lines = $io.lines;
        gather {
            while @lines {
                my $names := @lines.shift;
                last unless $names;

                my ($name,@alternates) = $names.split(' | ');
                my @tags is List = @lines.shift.words;
                my $tagline := @lines.shift;

                my str @parts;
                while @lines.shift -> $line {
                    @parts.push: $line;
                }

                take Raku::Element.new(
                  :$name, :@alternates, :@tags, :$tagline,
                  :description(@parts.join("\n"))
                )
            }
        }
    }
}

# vim: expandtab shiftwidth=4
