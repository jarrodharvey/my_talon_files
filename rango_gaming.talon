tag: browser
and tag: user.rango_direct_clicking
mode: user.game
-

^<user.rango_target>$: user.rango_command_with_target("directClickElement", rango_target)
^<user.rango_hint_double> (twice | second)$: user.rango_command_with_target("directClickElement", rango_hint_double)
<user.letter>: key(letter)

but: pass

# Idiotic things that talon mishears
^wail$: user.rango_command_with_target("clickElement", "w")
^neal$: user.rango_command_with_target("clickElement", "n")
^drop$: user.rango_command_with_target("clickElement", "t")
^heart$: user.rango_command_with_target("clickElement", "h")
^som$: user.rango_command_with_target("clickElement", "s")
^final$: user.rango_command_with_target("clickElement", "f")
^cup$: user.rango_command_with_target("clickElement", "c")
^hope$: user.rango_command_with_target("clickElement", "h")
^there$: user.rango_command_with_target("clickElement", "t")
^here$: user.rango_command_with_target("clickElement", "a")
^jack$: user.rango_command_with_target("clickElement", "y")
^(peach | ich)$: user.rango_command_with_target("clickElement", "e")

parrot(tch): key("r")