
class CommandLineInterface

  def greet
    puts 'Welcome to your very own fast food homie, a friend who finds quick fast food for you in the city!'
  end

  # This is the first landing page for the user experience. 
  # 
  # @user is an instance variable in the CLI, it is an instance of User.
  # After we leave this function, @user is set to the logged in user.
  def login_or_signup
    puts 'Are you a new user? (Y/N)'
    user_input = gets.chomp.downcase
    case user_input
    when "y"
      signup
      # @user exists
    when "n"
      login
      # @user exists
    else
      puts "Please respond with y or n! "
      login_or_signup
    end
    # @user exists
  end

  def signup
    puts "Please enter your name"
    user_input = gets.chomp
    @user = User.create(name: user_input)
    puts "Welcome, #{user_input}!" 
    main_menu
  end 

  #This method login only works if there is a user that is already in the database. It digs into the seed db and finds by :name
  def login
    puts "Enter your Login name"
    user_input = gets.chomp
    maybe_user = User.find_by_name(user_input)
    case maybe_user
    when nil
      puts "User doesn't exist, please try again."
      login
    else
      @user = maybe_user
      puts "Welcome, #{user_input}!"
    end
    # @user exists
  end

  def main_menu
    puts "what would you like to do?" 
    puts "1. View all Restaurants"
    puts "2. Write a Review"
    puts "3. Delete a Review"
    puts "4. Edit your Review"
    puts "5. View all Reviews"
    puts "6. Exit"
    user_input = gets.chomp
    case user_input
    when "1" # View all restaurants
      puts "Pick your poison.."
      Restaurant.display_restaurants
      puts "Press enter to go back to the main menu"
      user_input = gets.chomp
      main_menu
    when "2" # Write a review
      write_review
    when "3"
      #TO DO: Delete a Review
      delete_review
      main_menu
    when "4"
      #TO DO: Edit your Review
      main_menu
    when "5" # View all reviews
      Review.display_reviews(@user)
      main_menu
    when "6"
      puts "Have a nice day!"
      # Do nothing, just exit!
    else
      puts "Didn't help try again!"
      main_menu
    end
  end

  def write_review
    puts "Please enter a fast food joint from the following list to write a review about."
    Restaurant.display_restaurants
    puts "To go back press enter, if not type in the name of the restaurant below."
    user_input = gets.chomp
    case user_input
    when ""
      main_menu  
    end
    restaurant_name = user_input
    maybe_restaurant = Restaurant.find_by_name(restaurant_name)
    case maybe_restaurant
    when nil
      puts "Restaurant does not exist, please try again."
      write_review
    else
      restaurant = maybe_restaurant
    end
    puts "Write your Content"
    content = gets.chomp

    puts "Give a rating from 1-5"
    rating = gets.chomp
    Review.create(user_id: user.id, restaurant_id: restaurant.id, content: content, rating: rating)
    puts "Thank you for your review!"
    main_menu
  end

  #TO DO: Ask questions to the user to find a single review to delete
  def delete_review
    Review.where(user_id: @user.id)

    puts "Would you like to delete? (Y/N)"
    user_input = gets.chomp.downcase
    case user_input
    when "y"
      if User.find_by 
        return Review.where(user_id:user_id)[0].content
      else User.find(56)
        return Review.where(user_id:user_id)[0].content
      end

      #Find a way to display review and delete the last review
      #puts "Deleting last review"
      #puts "Press enter"
      #user_input = gets.chomp
       #delete
       #main_menu
      #User.find(user_input).delete
      #Review.find(@user)#if Review.delete(user_input) it deletes the whole reviews
      #Review.destroy(@user)
      binding.pry
      puts "Your review has been deleted"
      main_menu
    when "n"
      main_menu
    end
  end

  #TO DO: use the @user.id and update that somehow. update.name
  def edit_review
    puts 
  end

  def delete
    maybe_review = User.find_by(name)
    Review.destroy(maybe_review)
  end

end