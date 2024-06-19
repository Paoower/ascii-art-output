#!/bin/bash

GO_PROGRAM="go run ."

printf "\n \033[36m%s\033[0m" "////////////////////////TESTS///////////////////////////"
printf "\n \033[35m◼\033[0m : Input \033[32m◼\033[0m : Output \n"

# Test case 0
output_file="--output test00.txt"
input=banana
banner="standard"
printf "\033[35m\n Test for %s --output=%s %s %s : \n" "$GO_PROGRAM" "$output_file" "$input" "$banner"
$GO_PROGRAM "$output_file" "$input" "$banner"
printf "\033[36m%s\033[0m\n" "//////////////////////////////////////////////////////////"

# Test case 1
output_file="test00.txt"
input="First\nTest"
banner="shadow"
printf "\033[35m\n Test for %s --output=%s %s %s : \n" "$GO_PROGRAM" "$output_file" "$input" "$banner"
$GO_PROGRAM --output="$output_file" "$input" "$banner"
cat_output="$(cat -e "$output_file")"
printf "\033[32m%s" "$cat_output"
printf "\033[36m%s\033[0m\n" "//////////////////////////////////////////////////////////"

# Test case 2
output_file="test01.txt"
input="hello"
banner="standard"
printf "\033[35m\n Test for %s --output=%s %s %s : \n" "$GO_PROGRAM" "$output_file" "$input" "$banner"
$GO_PROGRAM --output="$output_file" "$input" "$banner"
cat_output="$(cat -e "$output_file")"
printf "\033[32m%s" "$cat_output"
printf "\033[36m%s\033[0m\n" "//////////////////////////////////////////////////////////"

# Test case 3
output_file="test02.txt"
input="123 -> #$%"
banner="standard"
printf "\033[35m\n Test for %s --output=%s %s %s : \n" "$GO_PROGRAM" "$output_file" "$input" "$banner"
$GO_PROGRAM --output="$output_file" "$input" "$banner"
cat_output="$(cat -e "$output_file")"
printf "\033[32m%s" "$cat_output"
printf "\033[36m%s\033[0m\n" "//////////////////////////////////////////////////////////"

# Test case 4
output_file="test03.txt"
input="432 -> #$%&@"
banner="shadow"
printf "\033[35m\n Test for %s --output=%s %s %s : \n" "$GO_PROGRAM" "$output_file" "$input" "$banner"
$GO_PROGRAM --output="$output_file" "$input" "$banner"
cat_output="$(cat -e "$output_file")"
printf "\033[32m%s" "$cat_output"
printf "\033[36m%s\033[0m\n" "//////////////////////////////////////////////////////////"

# Test case 5
output_file="test04.txt"
input="There"
banner="shadow"
printf "\033[35m\n Test for %s --output=%s %s %s : \n" "$GO_PROGRAM" "$output_file" "$input" "$banner"
$GO_PROGRAM --output="$output_file" "$input" "$banner"
cat_output="$(cat -e "$output_file")"
printf "\033[32m%s" "$cat_output"
printf "\033[36m%s\033[0m\n" "//////////////////////////////////////////////////////////"

# Test case 6
output_file="test05.txt"
input="123 -> \"#$%@"
banner="thinkertoy"
printf "\033[35m\n Test for %s --output=%s %s %s : \n" "$GO_PROGRAM" "$output_file" "$input" "$banner"
$GO_PROGRAM --output="$output_file" "$input" "$banner"
cat_output="$(cat -e "$output_file")"
printf "\033[32m%s" "$cat_output"
printf "\033[36m%s\033[0m\n" "//////////////////////////////////////////////////////////"

# Test case 7
output_file="test06.txt"
input="2 you"
banner="thinkertoy"
printf "\033[35m\n Test for %s --output=%s %s %s : \n" "$GO_PROGRAM" "$output_file" "$input" "$banner"
$GO_PROGRAM --output="$output_file" "$input" "$banner"
cat_output="$(cat -e "$output_file")"
printf "\033[32m%s" "$cat_output"
printf "\033[36m%s\033[0m\n" "//////////////////////////////////////////////////////////"

# Test case 8
output_file="test07.txt"
input="Testing long output!"
banner="standard"
printf "\033[35m\n Test for %s --output=%s %s %s : \n" "$GO_PROGRAM" "$output_file" "$input" "$banner"
$GO_PROGRAM --output="$output_file" "$input" "$banner"
cat_output="$(cat -e "$output_file")"
printf "\033[32m%s" "$cat_output"
printf "\033[36m%s\033[0m\n" "//////////////////////////////////////////////////////////"

# Additional random tests
# Random Test case 1
output_file="random01.txt"
input="RandomStringWithMixedCase"
banner="standard"
printf "\033[35m\n Test for %s --output=%s %s %s : \n" "$GO_PROGRAM" "$output_file" "$input" "$banner"
$GO_PROGRAM --output="$output_file" "$input" "$banner"
cat_output="$(cat -e "$output_file")"
printf "\033[32m%s" "$cat_output"
printf "\033[36m%s\033[0m\n" "//////////////////////////////////////////////////////////"

# Random Test case 2
output_file="random02.txt"
input="lowercase numbers and spaces 12345"
banner="standard"
printf "\033[35m\n Test for %s --output=%s %s %s : \n" "$GO_PROGRAM" "$output_file" "$input" "$banner"
$GO_PROGRAM --output="$output_file" "$input" "$banner"
cat_output="$(cat -e "$output_file")"
printf "\033[32m%s" "$cat_output"
printf "\033[36m%s\033[0m\n" "//////////////////////////////////////////////////////////"

# Random Test case 3
output_file="random03.txt"
input="Special characters !@#$%^&*()"
banner="standard"
printf "\033[35m\n Test for %s --output=%s %s %s : \n" "$GO_PROGRAM" "$output_file" "$input" "$banner"
$GO_PROGRAM --output="$output_file" "$input" "$banner"
cat_output="$(cat -e "$output_file")"
printf "\033[32m%s" "$cat_output"
printf "\033[36m%s\033[0m\n" "//////////////////////////////////////////////////////////"

# Random Test case 4
output_file="random04.txt"
input="Mixed CASE 1234 and spaces"
banner="standard"
printf "\033[35m\n Test for %s --output=%s %s %s : \n" "$GO_PROGRAM" "$output_file" "$input" "$banner"
$GO_PROGRAM --output="$output_file" "$input" "$banner"
cat_output="$(cat -e "$output_file")"
printf "\033[32m%s" "$cat_output"
printf "\033[36m%s\033[0m\n" "//////////////////////////////////////////////////////////"
