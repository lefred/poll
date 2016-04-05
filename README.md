# Poll

Poll is a Ruby on Rails applications for conducting Polls simply and in real-time. Poll requires no registration to create or enter polls and the results page can be loaded while results are loaded in as they occour.

Here are a few screensots from http://poll.lab.io

![poll_results](https://cloud.githubusercontent.com/assets/609675/14274324/e4cde01a-fb10-11e5-9069-36613f8ef245.png)
![poll_questions](https://cloud.githubusercontent.com/assets/609675/14274325/e4d0a3cc-fb10-11e5-8223-f4d139edb9f1.png)
![poll_questions_iphone](https://cloud.githubusercontent.com/assets/609675/14274326/e4d3c4bc-fb10-11e5-9b46-1b501c01b9b1.png)

This work is a fork of https://github.com/adambutler/poll

It adds QRCode on the poll results to share on screen and add Percona Live Logo

## Installing

```
$ git clone git@github.com:lefred/poll.git
$ cd poll
$ bundle install
$ rake db:create
$ rake db:migrate
$ cp .env.example .env
```

I use it with slanger:

```
$ gem install slanger
$ slanger --app_key 12345678901234567890 --secret your-pusher-secret
```

Modify the `.env` file to match with your  [Slanger](https://github.com/stevegraham/slanger)


## Contributing

Contributions are welcome, please follow [GitHub Flow](https://guides.github.com/introduction/flow/index.html)
