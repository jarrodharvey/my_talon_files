app: Chromium-browser
and tag: user.rango_direct_clicking
mode: user.game
-
^<user.rango_target>$:
    user.game_stop()
    user.rango_command_with_target("directClickElement", rango_target)
^<user.rango_hint_double> (twice | second)$: user.rango_command_with_target("directClickElement", rango_hint_double)
<user.letter>: key(letter)

## Idiotic things that talon mishears
^(beach | och | booth | east)$: user.rango_command_with_target("clickElement", "e")
^(cup | top | cow | cunt)$: user.rango_command_with_target("clickElement", "c")
^but$: user.rango_command_with_target("clickElement", "b")
^meal$: user.rango_command_with_target("clickElement", "n")
^there$: user.rango_command_with_target("clickElement", "a")
^drop$: user.rango_command_with_target("clickElement", "t")
^(drink | thrum | drop)$: user.rango_command_with_target("clickElement", "d")
^fun$: user.rango_command_with_target("clickElement", "f")
^(neal): user.rango_command_with_target("clickElement", "n")
^hope$: user.rango_command_with_target("clickElement", "h")
^(wail | wile | wale)$: user.rango_command_with_target("clickElement", "w")
^(east wale)$: user.rango_command_with_target("clickElement", "ew")
^(each plex | fuck)$: user.rango_command_with_target("clickElement", "ex")
^(air each)$: user.rango_command_with_target("clickElement", "ae")
^(air eh)$: user.rango_command_with_target("clickElement", "ae")
^(drum cup)$: user.rango_command_with_target("clickElement", "dc")
^(cheery | jeer)$: user.rango_command_with_target("clickElement", "j")
^(five)$: user.rango_command_with_target("clickElement", "f")