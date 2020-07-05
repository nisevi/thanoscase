[![Maintainability](https://api.codeclimate.com/v1/badges/e44605df0cb27199d63f/maintainability)](https://codeclimate.com/github/nisevi/thanoscase/maintainability) [![Test Coverage](https://api.codeclimate.com/v1/badges/e44605df0cb27199d63f/test_coverage)](https://codeclimate.com/github/nisevi/thanoscase/test_coverage) [![Build Status](https://semaphoreci.com/api/v1/nisevi/thanoscase/branches/master/shields_badge.svg)](https://semaphoreci.com/nisevi/thanoscase) [![Gem Version](https://badge.fury.io/rb/thanoscase.svg)](https://badge.fury.io/rb/thanoscase) 
[![FOSSA Status](https://app.fossa.com/api/projects/git%2Bgithub.com%2Fnisevi%2Fthanoscase.svg?type=shield)](https://app.fossa.com/projects/git%2Bgithub.com%2Fnisevi%2Fthanoscase?ref=badge_shield) 

# Thanoscase

Wipes out your strings from the universe

# Installation

In your gemfile:

```ruby
gem 'thanoscase'
``` 

or in the console:

```ruby
gem install thanoscase
```

# Usage

This gem MonkeyPatches the String class for adding two new methods:

```ruby
class String
  def thanoscase!
    return self if empty?
    half_universe = length/2
    half_universe.times { slice!(rand(length)) }
    self
  end

  def thanoscase
    dup.thanoscase!
  end
end
```

It will randomly eliminate half the characters you have in the string:

```ruby
"Marvel Universe".thanoscase # "arel Uve"
"Marvel Universe".thanoscase # "rvlUners"
"Marvel Universe".thanoscase # "Marel ie"
```

- If the amount of characters is even you will get half of them as return.
  ```ruby
    "1234".thanoscase # "14"
    "1234".thanoscase # "12"
    "1234".thanoscase # "34"
  ```
- If the amount of characters is odd you will get half of them plus one.
  ```ruby
    "123".thanoscase # "23"
    "123".thanoscase # "12"
    "123".thanoscase # "13"
  ```
- If you try to apply this method to an empty string, it will return the same empty string.
  ```ruby
    "".thanoscase # ""
  ```

You can also modify the object it`self` like so:

```ruby
str = "Avengers"
# "Avengers"
str.thanoscase
# "Aves"
str
# "Avengers"
str.thanoscase!
# "vegr"
str
# "vegr"
```


## License
[![FOSSA Status](https://app.fossa.com/api/projects/git%2Bgithub.com%2Fnisevi%2Fthanoscase.svg?type=large)](https://app.fossa.com/projects/git%2Bgithub.com%2Fnisevi%2Fthanoscase?ref=badge_large)
