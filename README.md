[![license-badge](https://img.shields.io/badge/license-MIT-blue.svg)](https://img.shields.io/badge/license-MIT-blue.svg)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](http://makeapullrequest.com)
 
# Description

Code Critics Bar Charts for Pharo Smalltalk. It uses Renraku to collect code critiques and [Roassal](http://agilevisualization.com/) as visualization engine.
 
# Installation

```smalltalk
Metacello new	
  baseline: 'CCBC';	
  repository: 'github://hernanmd/CCBC';	
  load.
```

# Screenshots

![Spec Method Critiques](https://github.com/hernanmd/ccbc/blob/master/Spec%20Method%20Critiques%20(Pharo%206.1).png)

![Iceberg  Method Critiques](https://github.com/hernanmd/ccbc/blob/master/Iceberg%20Class%20Critiques%20(Pharo%206.1).png)

![String Method Critiques](https://github.com/hernanmd/ccbc/blob/master/Collections%20-%20Strings.png)

# Usage

## Plot method critiques

```smalltalk
ReBarChartBuilder new 		
  packageName: 'Collections-Strings';		
  legendText: 'Collections - Strings';		
  barWidth: 30;		
  collectMethodCritiques;		
  buildView
```

## Plot class critiques

```smalltalk
ReBarChartBuilder new     
  packageName: 'Collections-Strings';   
  legendText: 'Collections - Strings';    
  barWidth: 30;   
  collectMethodCritiques;   
  buildView
```

See class **ReBarChartBuilder** for more examples.

# Contribute

**Working on your first Pull Request?** You can learn how from this *free* series [How to Contribute to an Open Source Project on GitHub](https://egghead.io/series/how-to-contribute-to-an-open-source-project-on-github)

If you have discovered a bug or have a feature suggestion, feel free to create an issue on Github.

If you'd like to make some changes yourself, see the following:      

  - Fork this repository to your own GitHub account and then clone it to your local device  
  - Step 2
  - Test.
  - Add <your GitHub username> to add yourself as author below.
  - Finally, submit a pull request with your changes!
  - This project follows the [all-contributors specification](https://github.com/kentcdodds/all-contributors). Contributions of any kind are welcome!
  
# License	

This software is licensed under the MIT License.Copyright Hernán Morales Durand, 2018.Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

# Authors

  - Hernán Morales Durand
