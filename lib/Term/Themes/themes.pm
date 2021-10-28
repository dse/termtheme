package Term::Themes::themes;

our $themes = {};

my %solarizedColors = (
    base03  => '#002b36',       # 0 43 54
    base02  => '#073642',       # 7 54 66
    base01  => '#586e75',       # 88 110 117
    base00  => '#657b83',       # 101 123 131
    base0   => '#839496',       # 131 148 150
    base1   => '#93a1a1',       # 147 161 161
    base2   => '#eee8d5',       # 238 232 213
    base3   => '#fdf6e3',       # 253 246 227
    yellow  => '#b58900',       # 181 137 0
    orange  => '#cb4b16',       # 203 75 22
    red     => '#dc322f',       # 220 50 47
    magenta => '#d33682',       # 211 54 130
    violet  => '#6c71c4',       # 108 113 196
    blue    => '#268bd2',       # 38 139 210
    cyan    => '#2aa198',       # 42 161 152
    green   => '#859900',       # 133 153 0
);

$themes->{'solarized-dark'} = {
    0                   => $solarizedColors{base02},
    1                   => $solarizedColors{red},
    2                   => $solarizedColors{green},
    3                   => $solarizedColors{yellow},
    4                   => $solarizedColors{blue},
    5                   => $solarizedColors{magenta},
    6                   => $solarizedColors{cyan},
    7                   => $solarizedColors{base2},
    8                   => $solarizedColors{base03},
    9                   => $solarizedColors{orange},
    10                  => $solarizedColors{base01},
    11                  => $solarizedColors{base00},
    12                  => $solarizedColors{base0},
    13                  => $solarizedColors{violet},
    14                  => $solarizedColors{base1},
    15                  => $solarizedColors{base3},
    foreground          => $solarizedColors{base0},
    background          => $solarizedColors{base03},
    highlightForeground => $solarizedColors{base1},
    highlightBackground => $solarizedColors{base02},
    cursor              => '#0f4999',
};

$themes->{'solarized-dark-2'} = {
    %{$themes->{'solarized-dark'}},
    foreground          => $solarizedColors{base1},
    background          => $solarizedColors{base02},
    highlightForeground => $solarizedColors{base2},
    highlightBackground => $solarizedColors{base01},
};

$themes->{'solarized-light'} = {
    %{$themes->{'solarized-dark'}},
    0                   => $solarizedColors{base2},
    7                   => $solarizedColors{base02},
    8                   => $solarizedColors{base3},
    10                  => $solarizedColors{base1},
    11                  => $solarizedColors{base0},
    12                  => $solarizedColors{base00},
    14                  => $solarizedColors{base01},
    15                  => $solarizedColors{base03},
    foreground          => $solarizedColors{base00},
    background          => $solarizedColors{base3},
    highlightForeground => $solarizedColors{base01},
    highlightBackground => $solarizedColors{base2},
};

$themes->{'solarized-light-2'} = {
    %{$themes->{'solarized-light'}},
    foreground          => $solarizedColors{base01},
    background          => $solarizedColors{base2},
    highlightForeground => $solarizedColors{base02},
    highlightBackground => $solarizedColors{base1},
};

$themes->{'zenburn'} = {
    #                        1 2 4
    #                        ------
    0                   => '#1f1f1f', # black
    1                   => '#cc9393', # red
    2                   => '#5f7f5f', # green
    3                   => '#ffd7a7', # brown
    4                   => '#8cb0d3', # blue
    5                   => '#8f8f8f', # magenta
    6                   => '#71d3b4', # cyan
    7                   => '#dfe4cf', # white
    8                   => '#6f6f6f', # dark gray
    9                   => '#ecb3b3', # bright red
    10                  => '#ffd7a7', # bright green
    11                  => '#8cb0d3', # bright yellow
    12                  => '#8f8f8f', # bright blue
    13                  => '#71d3b4', # bright magenta
    14                  => '#dfe4cf', # bright cyan
    15                  => '#ffcfaf', # bright white
    foreground          => '#dcdccc',
    background          => '#3f3f3f',
    highlightForeground => '#ffffef',
    highlightBackground => '#1f1f1f',
    cursor              => '#8faf9f',
};

$themes->{easy} = {
    #                        1 2 4
    #                        ------
    0                   => '#000000', # black
    1                   => '#cc3333', # red
    2                   => '#339933', # green
    3                   => '#999933', # brown
    4                   => '#333399', # blue
    5                   => '#993399', # magenta
    6                   => '#339999', # cyan
    7                   => '#999999', # white
    8                   => '#444444', # dark gray
    9                   => '#ff3333', # bright red
    10                  => '#33cc33', # bright green
    11                  => '#cccc33', # bright yellow
    12                  => '#3333cc', # bright blue
    13                  => '#cc33cc', # bright magenta
    14                  => '#33cccc', # bright cyan
    15                  => '#cccccc', # bright white
    foreground          => '#bbbbbb',
    background          => '#333333',
    highlightForeground => '#ffffff',
    highlightBackground => '#000000',
    cursor              => '#ff9933',
};

$themes->{greenscreen} = {
    %{$themes->{easy}},
    foreground          => '#11cc11',
    background          => '#113311',
    highlightForeground => '#22ff22',
    highlightBackground => '#116611',
    cursor              => '#55ff55',
};

1;
