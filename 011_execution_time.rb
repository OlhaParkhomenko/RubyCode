require "./011_bubble_sort_ar"
require "./010_bubble_sort1"
require 'date'

array=Array.new(10000) { rand(100) }

method1Start=Time.now
array.sort
method1Finish=Time.now
method1=method1Finish-method1Start
puts "Sort with standart function = #{method1}"

method2Start=Time.now
bubble_sort(array.dup)
method2Finish=Time.now
method2=method2Finish-method2Start
puts "Bubble sort = #{method2}"

method3Start=Time.now
bubble_sort_ar(array.dup)
method3Finish=Time.now
method3=method3Finish-method3Start
puts "Bubble sort with array = #{method3}"