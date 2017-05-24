names = ['bob', 'joe', 'susan', 'margaret']
# names['margaret'] = 'jody'

# The problem is with names['margaret']. Ruby is expecting and integer index value
# where 'margaret' is.

# This is one way to fix it
names[3] = 'jody'
puts names