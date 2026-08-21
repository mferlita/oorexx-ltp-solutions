/* Chapter 7 */

-- Some arrays
.Array~of()
.Array~of(5)
.Array~of("Hello", "Goodbye")

flavor = "vanilla" -- Not an array, of course...
.Array~of(89.9, flavor, (true, false)) -- ...but this is

gems = .Array~of("Pearl", "Garnet", "Amethyst")

SAY gems
SAY         --just a blank line
SAY gems[1] --Unlike Ruby, ooRexx starts counting an array at 1 instead of 0
SAY gems[2]
SAY gems[3]
SAY gems[4] --This is out of range and returns NIL
SAY

other_gems = .Array~new
other_gems[3] = "Ruby"
other_gems[1] = "Pink Diamond"
other_gems[2] = "Sapphire"
other_gems[1] = "Rose Quartz"
SAY other_gems
SAY

-- My First Iterator
languages = .Array~of("English", "Norwegian", "Ruby")

LOOP lang OVER languages
    SAY "I love" lang || "! Don't you?"
END

SAY "And let's hear it for Fortran!"
SAY "<crickets chirp in the distance>"
SAY

-- integer method FTW
LOOP 3
    SAY "Hip-Hip-Hooray!"
END

SAY

LOOP 2
    SAY "...you can SAY that again..."
END
SAY

-- More Array Methods
foods = .Array~of("artichoke", "brioche", "caramel")
test = .DateTime
SAY foods
SAY
SAY foods~string -- this is like telling ooRexx "tell me what this object is." It will print out "an Array"
SAY test~string
SAY
SAY foods~makeString("L", ", ")
SAY
SAY foods~makeString("L", " :) ") || " 8)"
SAY

-- ooRexx will print 200 new lines if you do this.
--LOOP 200
--  SAY .Array~of()
--END
--
--SAY

-- ooRexx will only tell you what these objects in this array are.
gems_langs_foods = .Array~of(gems, languages, foods)

SAY gems_langs_foods
SAY

-- In order to print out what's in these nested arrays, we have to write our own LOOP.
LOOP group OVER gems_langs_foods
    SAY group~makeString("L")
END
SAY

-- push and pop in Ruby become append and remove(array_name~last) in ooRexx.
-- last becomes lastItem whereas length becomes items.
favorites = .Array~new
favorites~append("raindrops on roses")
favorites~append("whiskey on kittens")

SAY favorites[1]
SAY favorites~lastItem
SAY favorites~items

SAY favorites~remove(favorites~last)
SAY favorites
SAY favorites~items

/* Ch. 7 continued in ch_7_bld_and_sort_array.rex, ch_7_table_of_contents_redux.rex,
   and ch_7_make_a_list_no_sort.rex */
