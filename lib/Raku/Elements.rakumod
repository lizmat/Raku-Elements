my constant resources = $?DISTRIBUTION.meta<resources>;

my constant groups-prefix = 'groups/';
my constant @groups = resources.map: {
    .substr(7) if .starts-with(groups-prefix);
}

my constant tags-prefix = 'tags/';
my constant @tags = resources.map: {
    .substr(5) if .starts-with(tags-prefix);
}

#- Element ---------------------------------------------------------------------
class Raku::Element:ver<0.0.4>:auth<zef:lizmat> {
    has str $.name;
    has     @.alternates;
    has     @.tags;
    has str $.tagline;
    has str $.url;
    has str $.description;

    method TWEAK(--> Nil) {
        @!alternates := @!alternates.List;
        @!tags       := @!tags.List;
    }
}

#- Group -----------------------------------------------------------------------
class Raku::Group:ver<0.0.4>:auth<zef:lizmat> {
    has str $.name;
    has str $.description;
    has     @.elements;

    method TWEAK(--> Nil) {
        @!elements := @!elements.List;
    }
}

#- Tag -------------------------------------------------------------------------
class Raku::Tag:ver<0.0.4>:auth<zef:lizmat> {
    has str $.name;
    has str $.description;
    has     @.elements;

    method TWEAK(--> Nil) {
        @!elements := @!elements.List;
    }
}

#- Elements --------------------------------------------------------------------
class Raku::Elements:ver<0.0.4>:auth<zef:lizmat> {
    has %.elements;
    has %.groups;
    has %.tags;

    method TWEAK(--> Nil) {
        $_ = .List for %!elements.values;
        %!elements := %!elements.Map;
        %!groups   := %!groups.Map;
        %!tags     := %!tags.Map;
    }

    method new() {
        my %elements;
        my %groups;
        my %tags;

        for @groups {
            my @elements;

            my @lines = %?RESOURCES{groups-prefix ~ $_}.lines;
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

                my str $url = @parts.shift if @parts;
                my $element := Raku::Element.new(
                  :$name, :@alternates, :@tags, :$tagline, :$url,
                  :description(@parts.join("\n"))
                );
                @elements.push: $element;
                %elements{$_}.push($element) for $name, |@alternates;
                %tags{$_}.push($element) for $element.tags;
            }

            %groups{$_} := Raku::Group.new(
              :name($_), :description(@lines.join("\n")), :@elements
            );
        }

        for %tags.keys -> $name {
            my $description := %?RESOURCES{tags-prefix ~ $name}.slurp.chomp;
            %tags{$name} := Raku::Tag.new(
              :$name, :$description, :elements(%tags{$name}.List)
            )
        }

        self.bless(:%elements, :%groups, :%tags)
    }
}

# vim: expandtab shiftwidth=4
