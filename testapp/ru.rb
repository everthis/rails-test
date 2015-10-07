# v0 = 0
# class SomeClass # Scope gate
#   v1 = 1
#   p local_variables # As the name says, it gives you all local variables in scope

#   def some_method # Scope gate
#     v2 = 2
#     p local_variables
#   end # end of def scope gate
# end # end of class scope gate

# some_class = SomeClass.new
# some_class.some_method

# v0 = 0
# SomeClass = Class.new do
#   v1 = 1
#   p local_variables

#   define_method(:some_method) do
#     v2 = 2
#     p local_variables
#   end
# end

# some_class = SomeClass.new
# some_class.some_method
# 

# sample_list = [1,2,3]
# hi = '123'
# sample_list.each do |item| # the block scope begins here
#   puts hi # will this print 123 or produce an error?
#   hello = 'hello' # declaring and initializing a variable
# end

# p hello # undefined local variable or method "hello"
# 

# hi = 'hi'
# hello ='hello'
# 3.times do |i; hi, hello|
#   p i
#   hi = 'hi again'
#   p hi
#   hello = 'hello again'
# end
# p hi # "hi"
# p hello # "hello"
# 

# 2.times do
#   i ||= 1
#   print "#{i} "
#   i += 1
#   print "#{i} "
# end
# 

class SomeClass
  b = 'hello'
  @@m = 'hi'
  def initialize
    @some_var = 1
    c = 'hi'
  end

  def some_method
    # sleep 10
    a = 'hello'
    p a
    # p b
    p @@m
    # p c
    p @some_var
  end
end

some_object = SomeClass.new
some_object.some_method