# manpageblog
<img align="left" src="https://cdn.gyptazy.ch/images/manpageblog.jpg"/>
<br>

<p float="center"><img src="https://img.shields.io/github/license/gyptazy/manpageblog"/><img src="https://img.shields.io/github/contributors/gyptazy/manpageblog"/><img src="https://img.shields.io/github/last-commit/gyptazy/manpageblog/master"/><img src="https://img.shields.io/github/issues-raw/gyptazy/manpageblog"/><img src="https://img.shields.io/github/issues-pr/gyptazy/manpageblog"/></p>


## Table of Content
- [General](#general)
- [Usage](#usage)
  - [Options](#options)
  - [Config File](#config-file)
  - [Blog entries (elements)](#blog-entries-elements)
- [Quick-Start](#quick-start)
- [Screenshots](#screenshots)
  - [Light Theme](#light-theme)
  - [Dark Theme](#dark-theme)
- [Live Demo](#live-demo)
- [Instances](#instances)
- [Motivation](#motivation)
- [License](#license)

## General
`manpageblog` is a small, lightweight blog engine written in Python and offers several advantages in a look of a man page (Unix like manual page). Firstly, it provides simplicity and ease of use, making it accessible even for users with limited technical knowledge. The lightweight nature ensures quick installation and minimal resource consumption, making it suitable for various hosting environments. No database is needed at all.

Python's readability and straightforward syntax make the blog engine easy to customize and extend, allowing users to tailor it to their specific needs. Additionally, being Python-based means leveraging a vast ecosystem of libraries and frameworks, enhancing the blog's functionality without unnecessary complexity. Posts and pages are written in Markdown or HTML while the blog engine generates the whole website. While using only flat files, this offers great possibilities in maintaining the content. Given this approach, you can manage your whole blog in git.

The lightweight nature also contributes to faster loading times, improving user experience and search engine rankings. Overall, a small, lightweight blog engine in Python combines simplicity, flexibility, and efficiency, making it an ideal choice for those prioritizing a streamlined and customizable blogging experience.

To support this small and lightweight expression of the blog engine the default theme represents a `man page` (manual page or also known as handbook) design which provides all needed information in a simple document.

## Usage
`manpageblog` is a pretty easy, slim and straight forward tool. After checking out this repository it is enough to simply run the following command:
```
$> ./manpageblog
```
This command directly creates an example blog within the subdirectory `docroot` by the given example content from `content`.

Adding and modifying content is only done within the `content` directory. This approach makes it easy to obtain the content for the blog from a git repository. All content is provided by flat files like `.md` (Markdown) and/or `.html`.

### Options
`manpageblog` supports the following options:

| Option | Example | Description |
|------|:------:|------:|
| -c | -c gyptazy.conf | Defines a config file for a specific blog |
| -h | --help | Prints the help page |

By creating multiple config files and adjusting them to dedicated output directories (and if needed templates & assets), this provides a multi blog setup.

### Config File
The configuration file (default `blog.conf`) provides the following configuration files. You may adjust them to your personal needs:

<!-- TOC ignore:true -->
#### [general]
| Option | Example | Description |
|------|:------:|------:|
| name | manpageblog | Defines the first part of the title (and HTML title) |
| subtitle | a small and lightweight blog engine. | Defines the second part of the title (and HTML title)  |
| description | This is the blog of manpageblog where you can find more information | Defines the HTML meta descriptions (for searchengines) |
| author | admin | A default name for the author of blog posts |
| copyright | manpageblog | name of a copyright holder |
| preview_words | 150 (default) | How many words should be displayed within the blog index page |

<!-- TOC ignore:true -->
#### [social]
| Option | Example | Description |
|------|:------:|------:|
| mastodon | https://mastodon.bsd.cafe/@manpageblog | Link to Mastodon profile |
| twitter | https://twitter.com/manpageblog | Link to Twitter profile|
| github | https://github.com/manpageblog | Link to GitHub profile |

<!-- TOC ignore:true -->
#### [opengraph]
| Option | Example | Description |
|------|:------:|------:|
| image_width | 800 | Image width within the OG preview |
| image_height | 375 | Image height within the OG preview |

<!-- TOC ignore:true -->
#### [processing]
| Option | Example | Description |
|------|:------:|------:|
| site_url | http://localhost:8000 | URI (site url) where this blog is hosted |
| base_path | None | Path to the blog (subdirectory, if not in docroot) |
| assets_path | _assets | Path to the manpageblog assets |
| template_path | _templates | Path to the manpageblog assets |
| output_path | docroot | Output path to the generated blog |
| theme | light | Defines the theme to use |

### Blog entries (elements)
Within each website element or blog post, a custom title, meta description and an Open Graph image URL can be defined. This ones should be defined
as comments which will re replaced and integrate during the site creation by the blog engine.

#### Example Post
```
<!-- title: manpageblog released in version 1.0 -->
<!-- meta_description: Initial release of manpageblog 1.0. A simple and static blog generator in manpage design written in Python. -->
<!-- image_url: https://cdn.gyptazy.ch/manpageblog.jpg -->

manpageblog finally got its first release. With version 1.0 a public release is now present.
A small, lightweight blog engine written in Python and offers several advantages in a look
of a man page (Unix like manual page).
```

<!-- TOC ignore:true -->
#### Element Options
| Option | Example | Description |
|------|:------:|------:|
| title: | manpageblog released in version 1.0 |  HTML & OG title |
| meta_description: | Initial release of manpageblog 1.0. A simple and static blog generator in manpage design written in Python. | HTML & OG description |
| image_url: | https://cdn.gyptazy.ch/manpageblog.jpg | Path to an image file for Open Graph |


## Quick-Start
To give this just a short test you can just run the following commands:
```
git clone https://github.com/gyptazy/manpageblog.git
cd manpageblog
./manpageblog
cd docroot
python3 -m http.server
```
Afterwards, just open your browser and visit `http://localhost:8000`. That's it!

## Screenshots
### Light Theme
<img align="left" src="https://cdn.gyptazy.ch/images/manpageblog_light.png"/>

### Dark Theme
<img align="left" src="https://cdn.gyptazy.ch/images/manpageblog_dark.png"/>

## Live Demo
A live demo of a running manpageblog instance can be found here:<br>
https://manpageblog.gyptazy.ch

## Instances
If you are using `manpageblog` you may add your website, blog or site here to share the usage and experience with other users. Of course, only if you like.

**Instances**:
| Website | User | Description |
|------|:------:|------:|
| https://manpageblog.gyptazy.ch | @gyptazy | manpageblog project website |
| https://gyptazy.ch | @gyptazy | DevOps, coding, cloud and open-source in a geeky way. Find out more about Ansible, Kubernetes, Prometheus and other fancy tools. You see code - I see bugs! |  

## Motivation
Like probably the most ones I started with `Wordpress` which is a pretty cool but also a very bloated software for a personal blog. Running such a software requires multiple application with different dependencies, continuous updates and more resources on the system to serve the whole content. Creating additional backups of the docroot and the database require additional time and efforts. All of this is not really necessary when the content is more or less static and comments are deactivated or not used. A flat file approach provides the optional possibility to run and keep everything in git. Generated HTML pages can easily be served even on low resource systems. While this way of blogging mostly targets tech-enthusiasts that are already working on Unix-like systems the idea was to provide a blog engine in a layout and theming of a Unix-like `man page` (manual page). Man pages always align to the same formatting based on `troff` which make man pages look always the same. While man pages provide information of a cli command the idea was to adapt this to a blog. A blog also provides information and especially when serving tech related content it makes much sense to provide it in a similar way. This is the story of how `manpageblog` was born.

## License
`manpageblog` 
This is free and open source software. You can use, copy, modify,
merge, publish, distribute, sublicense, and/or sell copies of it,
under the terms of the [MIT License](LICENSE.md).

This software is provided "AS IS", WITHOUT WARRANTY OF ANY KIND,
express or implied. See the [MIT License](LICENSE.md) for details.

This repository contains the source code of an example website
containing two static blogs and a few static pages. The website can be
generated by running [manpageblog](manpageblog). That's it!

So go ahead, fork this repository, replace the [content](content) with
your own, and generate your static website. It's that simple!

You are [free](LICENSE.md) to copy, use, and modify this project for
your blog or website, so go ahead and fork this repository and make it
your own project. Change the [layout](layout) if you wish to, improve
the [stylesheet](static/css/style.css) to suit your taste, enhance
[manpageblog](manpageblog) if you need to, and develop your website/blog
just the way you want it.
