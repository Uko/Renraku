Quality Assistant _`beta`_ [![Build Status](https://ci.inria.fr/pharo-contribution/buildStatus/icon?job=QualityAssistant)](https://ci.inria.fr/pharo-contribution/job/QualityAssistant/)
=====================

Hi, I'm your personal quality assistant. I run SmallLint rules on the code that you modify, and notify you about the critics right in the system browser. If you find any bugs in me please [report them](https://github.com/Uko/QualityAssistant/issues).

![logo](graphics/logo100.png)

- [Installation](#installation)
- [Usage](#usage)

Installation
------------

The easiest way to install is to use **Configuration browser**. Otherwise you can execute the following script.

```Smalltalk
Metacello new
  smalltalkhubUser: 'Pharo'
  project: 'MetaRepoForPharo40';
  configuration: 'QualityAssistant';
  load
```

Usage
-----

Quality Assistant uses Nautilus plugin to notify uses about the critics. The plugin is automatically activated and will be available in all browsers **opened after** loading Quality Assistant. By default the plugin is positioned at the bottom of Nautilus browser, and will display a list of critics for a selected class or method. Clicking on the question mark will bring up the rationale on the critic. Clicking on the critic text will highlight the part of problematic code (if possible). Sometimes a "tools" icon will appear next to a critic description. By pressing it you can automatically resolve the issue.

![critics](graphics/critics.png)
