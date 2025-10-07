# Persistent Login (Roundcube)

[![Packagist](https://img.shields.io/packagist/dt/texxasrulez/persistent_login?style=plastic&labelColor=blue&color=gold)](https://packagist.org/packages/texxasrulez/persistent_login)
[![Packagist Version](https://img.shields.io/packagist/v/texxasrulez/persistent_login?style=plastic&logo=packagist&logoColor=white&labelColor=blue&color=limegreen)](https://packagist.org/packages/texxasrulez/persistent_login)
[![Project license](https://img.shields.io/github/license/texxasrulez/persistent_login?style=plastic&labelColor=blue&color=coral)](https://github.com/texxasrulez/persistent_login/LICENSE)
[![GitHub stars](https://img.shields.io/github/stars/texxasrulez/persistent_login?style=plastic&logo=github&labelColor=blue&color=deepskyblue)](https://github.com/texxasrulez/persistent_login/stargazers)
[![issues](https://img.shields.io/github/issues/texxasrulez/persistent_login?style=plastic&labelColor=blue&color=aqua)](https://github.com/texxasrulez/persistent_login/issues)
[![GitHub contributors](https://img.shields.io/github/contributors/texxasrulez/persistent_login?style=plastic&logo=github&logoColor=white&labelColor=blue&color=orchid)](https://github.com/texxasrulez/persistent_login/graphs/contributors)
[![GitHub forks](https://img.shields.io/github/forks/texxasrulez/persistent_login?style=plastic&logo=github&logoColor=white&labelColor=blue&color=darkorange)](https://github.com/texxasrulez/persistent_login/forks)
[![Donate to this project using Paypal](https://img.shields.io/badge/paypal-money_please-blue.svg?style=plastic&labelColor=blue&color=forestgreen&logo=paypal)](https://www.paypal.me/texxasrulez)

Provides a "Keep me logged in" aka "Remember Me" functionality for [Roundcube][roundcube].

![Login with Larry Skin](docs/login_elastic.png)

## Download
You can download the plugin from the latest [release tags][github-release] on GitHub.

## Installation
- Extract the downloaded archive into Roundcube’s plugin directory
  `<roundcube>/plugins/` and rename it to `persistent_login`.

- Open the Roundcube's main configuration file `<roundcube>/config/main.inc.php`
  and add the plugin’s name to the active plugins array, e.g.:

```php
$config['plugins'] = array('persistent_login');
```

Thats it. All configuration is optional.

## Configuration (Optional)
Persistent Login provides two different ways of usage.
User-Data cookie or AuthToken cookie based.

### UserData cookie (No database extension required)
This method doesn’t require any configuration, it is enabled by default.
It stores the user’s login information encrypted in a cookie.

### AuthToken cookie (more secure, recommended)
This method have to be enabled in the plugins configuration file.
It requires the creation of a table in your __roundcubemail’s database__ as well.
The table can be created by the SQL script in the `sql/` directory of the plugin.
Execute ALL statements from the SQL file.

Enable it in config: `persistent_login/config.inc.php`
```php
$rcmail_config['ifpl_use_auth_tokens'] = true;
```

[roundcube]: http://roundcube.net/
[github-release]: https://github.com/mfreiholz/persistent_login/releases
