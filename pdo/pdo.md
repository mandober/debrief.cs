# PDO

http://php.net/manual/en/intro.pdo.php
http://php.net/manual/en/pdo.connections.php
http://php.net/manual/en/ref.pdo-mysql.php


## Introduction
http://php.net/manual/en/intro.pdo.php

**PHP Data Objects** (PDO) extension defines an interface for accessing databases in PHP.

Each database driver that implements the PDO interface can expose db-specific features as regular extension functions.

Note: you cannot perform any db functions using the PDO extension by itself; you must use a db-specific PDO driver to access a db server.

PDO provides a data-access abstraction layer, meaning that, regardless of which db you're using, you use the same functions to issue queries and fetch data.

PDO does not provide a db abstraction; it doesn't rewrite SQL or emulate missing features (that's the job of abstraction layer).

PDO started shipping with PHP since version 5.1; it is also available as a PECL extension for PHP 5.0; it cannot be run on earlier PHP versions (lack of required OO features).
