number = File.read("data/number/input.txt").strip.to_i

function_list = File.readlines("data/methods/method_names.txt")
process_list  = File.readlines("data/methods/method_processes.txt")
caller_list   = File.readlines("data/methods/method_callers.txt")

size_limit = function_list.size.to_i

if number > size_limit
  number = 0
end

active_function = function_list[number]
active_process  =  process_list[number]
active_caller   =   caller_list[number]

open("script.rb", "w") { |f|
  f.puts active_function
  f.puts active_process
  f.puts active_caller
}

# system("ruby script.rb")

open("data/number/input.txt", "w") { |f|
  f.puts number = number + 1
}
