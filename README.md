# Poll

Poll is a Ruby on Rails applications for conducting Polls simply and in real-time. Poll requires no registration to create or enter polls and the results page can be loaded while results are loaded in as they occour.

Here are a few screensots from http://poll.lab.io

![image](https://cloud.githubusercontent.com/assets/1238468/4652277/b9e13d4e-54a3-11e4-88a2-52d832787057.png)

![image](https://cloud.githubusercontent.com/assets/1238468/4652269/acce543e-54a3-11e4-9006-9fe4b0113557.png)

![image](https://cloud.githubusercontent.com/assets/1238468/4652272/b2063976-54a3-11e4-8a92-737827ec53cc.png)

This work is a fork of git@github.com:adambutler/poll.git

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
