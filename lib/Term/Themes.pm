package Term::Themes;

use Exporter;
use base qw(Exporter);

our @EXPORT = qw();
our @EXPORT_OK = qw($themes);
our %EXPORT_TAGS = (
    'all' => [qw($themes)],
);

#------------------------------------------------------------------------------

use Term::Themes::mintty;
use Term::Themes::putty;
use Term::Themes::themes;

our $themes = {
    %{$Term::Themes::putty::themes},
    %{$Term::Themes::mintty::themes},
    %{$Term::Themes::themes::themes},
};


my @themeModules = qw(Term::Themes::mintty
                      Term::Themes::putty
                      Term::Themes::themes);

my %moduleHash;
foreach my $module (@themeModules) {
    no strict 'refs';
    my $varname = "${module}::themes";
    my $themes = ${$varname};
    $moduleHash{$module} = $themes;
}

my %themeCounts;
foreach my $module (@themeModules) {
    foreach my $key (keys %{$moduleHash{$module}}) {
        $themeCounts{$key} += 1;
    }
}

my @duplicatedThemeNames = sort grep { $themeCounts{$_} >= 2 } keys %themeCounts;

foreach my $themeName (@duplicatedThemeNames) {
    my @modules = grep { exists $moduleHash{$_}->{$themeName} } @themeModules;
    printf("$themeName is duplicated in @modules\n");
}

1;
