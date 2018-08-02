Using GNU AR tools
==============================================================
# show ar version
ar -V

# extract members from lib
ar -xv lib.a

# show table listing
ar -tv lib.a

# delete module from lib
ar -dv lib.a a.o

ar -tv lib.a

# quick append
ar -qv lib.a a.o

# insert o bjs into lib with replacment
ar -rv lib.a a.o

# show all objs
nm -s lib.a

