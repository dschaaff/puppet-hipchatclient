# hipchatclient

#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with hipchatclient](#setup)
    * [Setup requirements](#setup-requirements)
    * [Beginning with hipchatclient](#beginning-with-hipchatclient)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

## Overview

This module installs the hipchat4 client on Ubuntu Linux.

## Module Description

This module installs adds the repo for hipchat4 and installs the client on Ubuntu.


## Setup

### Setup Requirements

Simply include the class to manage the repo and intall hipchat4.

`include hipchatclient`

### Beginning with hipchatclient

Manage repo defaults to true. If you set it to false you need to manage addingthe source list outside of this module.

```
class {'hipchatclient':
  manage_repo => false,
}
```


## Reference

### Classes

#### Public Classes
* `hipchatclient`

#### Private Classes
* `hipchatclient::repo`

### Class: `hipchatclient`
Install the hipchat client.

#### Parameters
* `manage_repo`: determines whether the module manages the apt source list hipchat
  - Default: ` true `

## Limitations

This only supports Ubuntu and has only been tested on Ubuntu 14.04.

## Development

I welcome all contributions and appreciate pull requests.
