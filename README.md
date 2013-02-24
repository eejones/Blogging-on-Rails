== Blogging on Rails ==

username: eej
password: guest

This program is based off of the rubyonrails.org guides with a few additions. 

Users can add blog posts ith their name title and content(with some limits on length for name particularly)(they must enter their username and password to create). These posts can also be edited with the correct security.

Tags can also be added to each post.

Users can also add comments to individual posts. These comments can also be deleted by users with the correct username/password.

The enhancements can be seen in /posts. I cleaned up the table so that the headers and table data are alligned and the display is a bit neater. There is also a count for the # of comments, the number of total views and the number of unique views by session id.
