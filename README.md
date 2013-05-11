Weblog
=========

Users can add blog posts with their name, title, and content(with some limits on length for name particularly)(they must enter their username and password to create). These posts can also be edited with the correct security.

User Interface for Users
------------

When viewing posts and creating comments and tags, users will see a straightforward screen. This program uses the 'censor_for_seven_words' gem to censor certain words as well:
![weblog Postshowscreenonlycensored](/app/assets/images/Postshowscreenonlycensored.png)

Users can also edit posts with correct security
username: eej
password: guest

![weblog Authenticatepopupweblog](/app/assets/images/Authenticatepopupweblog.png)

Without this security they can't edit or add posts:
![weblog failedauthweblog](/app/assets/images/failedauthweblog.png)

Users can view all posts with comment info and tags:

![weblog postindexweblog](/app/assets/images/postindexweblog.png)

Users can also see information on individual commenters:
![weblog commenterinfo](/app/assets/images/commenterinfo.png)

Additional Setup
------------
This program uses the 'censor_for_seven_words' gem to censor certain language:

Adding censor_for_seven_words gem to your Gemfile:

```ruby
gem "censor_for_seven_words"
```

This allows users to easily censor words for posts, tags and comments directly in views:
```ruby
<p>
  <b>Comment:</b>
  <%= comment.body.censor_words %>
</p>
```
