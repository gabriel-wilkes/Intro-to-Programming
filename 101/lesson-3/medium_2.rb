# Q1 & Q2 
# Mentally processed the code flows

# Q3
# This will be the results because a_string_param is reassigned a new value using +=
# but << used on an_array_param mutates array directly
"My string looks like this now: pumpkins"
"My array looks like this now: ['pumpkins', 'rutabaga']"

# Q4
# The results are opposite of the last problem but for the same reasons
"My string looks like this now: pumpkinsrutabaga"
"My array looks like this now: ['pumpkins']"

# Q5
def color_valid(color)
  color == "blue" || color == "green"
end