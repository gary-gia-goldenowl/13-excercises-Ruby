######### ID 1
def greetings (name)
    "Hello #{name}. How are you doing"
end





######### ID 2
def multiply (numA , numB)
    numA.to_i * numB.to_i
end




######### ID 3
def caps(name)
    name.length > 10 ? "#{name.upcase}" : "#{name}"  # if length name > 10 characters upcase it 
end




######### ID 4
def evaluate (num)
    n = num.to_i
    if n < 0
        "You can't enter a negative number!" 
    elsif n > 0 && n <= 50
        "#{num} is between 0 and 50"
    elsif n >= 51 && n <= 100
        "#{num} is between 50 and 100"
    else 
        "#{num} is above 100"
    end
end




######### ID 5
def remove_first_last_two_char(str)
    empty_str = ""
    result = ""
    pos = 0
    str.split("").each do |char|
        empty_str << char if pos != 0 && pos != 1 && pos != str.length - 1 && pos != str.length - 2
        pos += 1
    end
    empty_str

end
  
  




######### ID 6
def count_to_zero(n)
    if n <= 0
        puts n
    else
        puts n
        count_to_zero(n-1)
    end
end





########## ID 7
def fibonacci(num)
    if num < 2
      return 1
    else
      return fibonacci(num - 2) + fibonacci(num - 1)
    end
end
 




########## ID 8
def sum (arr)
    arr_sum = 0
    arr.each do |num|
        arr_sum = arr_sum + num
    end
    arr_sum
end





########## ID 9
def increase_two (arr)
    arr_sum = []

    arr.each do |num|
        arr_sum << num + 2 
    end
    arr_sum
end




########## ID 10
def seperate_even_odd(arr)
    arr_seperate = []
    arr2 = []
    arr.each do |num|
        arr_seperate << num if num % 2 == 0
        arr2 << num if num % 2 == 1
    end
     "#{arr_seperate} , #{arr2}"
end





########## ID 11
def merge (name , age)
    a = [*name , *age].to_h     #Put two hash into an array then transform to hash
end 





########## ID 12

def same_age_user(users)
    age_arr = users.map { |p| p[:age] }.uniq    #ban dau tra ve mang chuoi trung` , uniq het trung

    result = {}

    age_arr.each do |age|
        user_arr = []

        users.each do |user|
        user_arr << user if user[:age] == age    
        end

        result[age] = user_arr
    end
    result

end


########## ID 13
class Car
    def year
        @year 
    end

    def year=(str)
        @year = str
    end


    def model
        @model 
    end

    def model=(str)
        @model = str
    end


    def color
        @color
    end

    def color=(str)
        @color = str
    end

    def initialize(year , model , color ,current_speed: 0)
        @year = year
        @model = model
        @color = color
        @current_speed = current_speed


        def current_speed
            puts "Your current speed is #{@current_speed}"
            @current_speed                                  # Return current_speed to compare two Car
        end
    end

    def speed_up(num)
        @current_speed += num
        puts "You push the gas and accelerate #{num} mph"
    end

    def brake(num)
        @current_speed -= num 
        puts "You push the brake and decelerate #{num} mph"
    end

    def shut_down
        @current_speed = 0
        puts "You stop the car"
    end
end
    

c1 = Car.new("1980","Audi","yellow")
c1.current_speed
c1.speed_up(20)
c1.speed_up(40)
c1.current_speed
c1.brake(20)
c1.current_speed

c2 = Car.new("1988","Mec","red")
c2.current_speed
c2.speed_up(40)
c2.speed_up(40)
c2.current_speed
c2.brake(20)
c2.current_speed

c1.current_speed.eql? c2.current_speed  #Compare
