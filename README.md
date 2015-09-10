# CKTextFieldTableCell

[![CI Status](http://img.shields.io/travis/cybertk/CKTextFieldTableCell.svg?style=flat)](https://travis-ci.org/cybertk/CKTextFieldTableCell)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![Version](https://img.shields.io/cocoapods/v/CKTextFieldTableCell.svg?style=flat)](http://cocoapods.org/pods/CKTextFieldTableCell)
[![Platform](https://img.shields.io/cocoapods/p/CKTextFieldTableCell.svg?style=flat)](http://cocoapods.org/pods/CKTextFieldTableCell)

<img width="375" alt="screen shot 1" src="https://cloud.githubusercontent.com/assets/455809/9794045/818a35fa-581b-11e5-9216-7fec0e14b087.png">

## Getting started

CKTextFieldTableCell is designed to used in [Interface Builder](https://developer.apple.com/xcode/interface-builder/) as a drop-in replacement of UITableViewCell with support of UITextField.

First, set **Custom Class** of **Table View Cell** to `CKTextFieldTableCell`

<img width="1280" alt="figure-step-1" src="https://cloud.githubusercontent.com/assets/455809/9794072/a1ea19fa-581b-11e5-9d8f-8edaaad120f6.png">

Update **Style** of **Table View Cell** to `Basic`

<img width="1280" alt="figure-step-2" src="https://cloud.githubusercontent.com/assets/455809/9794144/0f4fe416-581c-11e5-92f4-fe14795802dd.png">

Add a **Text Field** into **Content View** of **Table View Cell** and connect it `textField` **Outlet**

<img width="1280" alt="figure-step-3" src="https://cloud.githubusercontent.com/assets/455809/9794159/2739fb52-581c-11e5-8130-8044206a88d9.png">

Then you get CKTextFieldTableCell, you can also run the example project, by cloning the repo, and open `Example` target within Xcode.

## Requirements

- iOS 8.0 and above
- Xcode 7.0 and above

## Installation

### Carthage

CKTextFieldTableCell is available through [Carthage](https://github.com/carthage/carthage). To install it, simply add the following line to your Cartfile:

```
github "cybertk/CKTextFieldTableCell"
```

### Cocoapods

CKTextFieldTableCell is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "CKTextFieldTableCell"
```

## Author

[@cybertk](https://github.com/cybertk)

## License

CKTextFieldTableCell is available under the MIT license. See the [LICENSE](LICENSE) file for more info.
