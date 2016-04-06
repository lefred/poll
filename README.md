# Poll

Poll is a Ruby on Rails applications for conducting Polls simply and in real-time. Poll requires no registration to create or enter polls and the results page can be loaded while results are loaded in as they occour.

Here are a few screensots from http://poll.lab.io

![poll_results](https://cloud.githubusercontent.com/assets/609675/14274324/e4cde01a-fb10-11e5-9069-36613f8ef245.png)
![poll_questions](https://cloud.githubusercontent.com/assets/609675/14274325/e4d0a3cc-fb10-11e5-8223-f4d139edb9f1.png)
![poll_questions_iphone](https://cloud.githubusercontent.com/assets/609675/14274326/e4d3c4bc-fb10-11e5-9b46-1b501c01b9b1.png)

This work is a fork of https://github.com/adambutler/poll

It adds QRCode on the poll results to share on screen and add Percona Live Logo

You can now add a question as a real question, not only a poll.

![selection_154](https://cloud.githubusercontent.com/assets/609675/14320324/e9dfa2e6-fc14-11e5-9a94-f86804ec0b3f.png)

It's also possible to set which value is correct:

![selection_155](https://cloud.githubusercontent.com/assets/609675/14320330/ee20f314-fc14-11e5-8314-acef3ce74b7d.png)

You can't vote twice and you see your previous answer:

![selection_153](https://cloud.githubusercontent.com/assets/609675/14320204/82c4d8b0-fc14-11e5-857d-84b1a6341d4c.png)
![img_3750](https://cloud.githubusercontent.com/assets/609675/14320220/9698f740-fc14-11e5-8015-01d37dc1213c.PNG)

Results are now aggregated only in correct or wrong:

![selection_152](https://cloud.githubusercontent.com/assets/609675/14320228/9ba610f6-fc14-11e5-9f93-50d6f6a1e1f0.png)

It's now also possible to add and store the IP and port where the server is listening to add in the QRCode generation:

![selection_157](https://cloud.githubusercontent.com/assets/609675/14335685/7ccf4e7e-fc5d-11e5-847c-7f0923562e2e.png)

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
