(window.webpackJsonp=window.webpackJsonp||[]).push([[10],{286:function(t,s,a){"use strict";a.r(s);var n=a(1),e=Object(n.a)({},(function(){var t=this,s=t._self._c;return s("ContentSlotsDistributor",{attrs:{"slot-key":t.$parent.slotKey}},[s("h1",{attrs:{id:"auth-custom-operations"}},[s("a",{staticClass:"header-anchor",attrs:{href:"#auth-custom-operations"}},[t._v("#")]),t._v(" Auth custom operations")]),t._v(" "),s("p",[t._v("In order to implement frequent operations that are performed on the "),s("code",[t._v("x/auth")]),t._v(" module, Alan.dart comes with a couple of utility methods related to such module.")]),t._v(" "),s("h2",{attrs:{id:"query-the-details-of-an-account"}},[s("a",{staticClass:"header-anchor",attrs:{href:"#query-the-details-of-an-account"}},[t._v("#")]),t._v(" Query the details of an account")]),t._v(" "),s("p",[t._v("The first utility class that Alan.dart has related to the "),s("code",[t._v("x/auth")]),t._v(" module is the "),s("code",[t._v("AuthQuerier")]),t._v(" class. This is a simple wrapper around the "),s("code",[t._v("auth.QueryClient")]),t._v(" class that allows to query the details of an account more easily.")]),t._v(" "),s("p",[t._v("By default, Cosmos returns the accounts as instances of the "),s("code",[t._v("Any")]),t._v(". Such instances should then be de-serialized by reading the "),s("code",[t._v("typeUrl")]),t._v(" property and decide what account implementation they are referring to.")]),t._v(" "),s("p",[t._v("In order to avoid having you re-write this logic every time, we implemented the "),s("code",[t._v("AuthQuerier.getAccountData")]),t._v(" method that simply returns an "),s("code",[t._v("AccountI")]),t._v(" instance. This is an interface that is implemented by all the classes representing an account and contains all the getters to access common data.")]),t._v(" "),s("div",{staticClass:"language-dart line-numbers-mode"},[s("pre",{pre:!0,attrs:{class:"language-dart"}},[s("code",[s("span",{pre:!0,attrs:{class:"token keyword"}},[t._v("import")]),t._v(" "),s("span",{pre:!0,attrs:{class:"token string-literal"}},[s("span",{pre:!0,attrs:{class:"token string"}},[t._v("'package:alan/alan.dart'")])]),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(";")]),t._v("\n\n"),s("span",{pre:!0,attrs:{class:"token keyword"}},[t._v("final")]),t._v(" querier "),s("span",{pre:!0,attrs:{class:"token operator"}},[t._v("=")]),t._v(" "),s("span",{pre:!0,attrs:{class:"token class-name"}},[t._v("AuthQuerier")]),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(".")]),s("span",{pre:!0,attrs:{class:"token function"}},[t._v("create")]),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v("(")]),t._v("channel"),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(")")]),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(";")]),t._v("\n"),s("span",{pre:!0,attrs:{class:"token keyword"}},[t._v("final")]),t._v(" account "),s("span",{pre:!0,attrs:{class:"token operator"}},[t._v("=")]),t._v(" "),s("span",{pre:!0,attrs:{class:"token keyword"}},[t._v("await")]),t._v(" querier"),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(".")]),s("span",{pre:!0,attrs:{class:"token function"}},[t._v("getAccountData")]),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v("(")]),t._v("address"),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(")")]),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(";")]),t._v("\n")])]),t._v(" "),s("div",{staticClass:"line-numbers-wrapper"},[s("span",{staticClass:"line-number"},[t._v("1")]),s("br"),s("span",{staticClass:"line-number"},[t._v("2")]),s("br"),s("span",{staticClass:"line-number"},[t._v("3")]),s("br"),s("span",{staticClass:"line-number"},[t._v("4")]),s("br")])]),s("div",{staticClass:"custom-block warning"},[s("p",{staticClass:"custom-block-title"},[t._v("Querying a custom account")]),t._v(" "),s("p",[t._v("If you are trying to query the chain for an account that is implemented using a custom type, you should first "),s("a",{attrs:{href:"#working-with-custom-account-implementations"}},[t._v("register your account type")]),t._v(" in order to avoid any error such as:")]),t._v(" "),s("div",{staticClass:"language- line-numbers-mode"},[s("pre",{pre:!0,attrs:{class:"language-text"}},[s("code",[t._v("Account of type XXXXX cannot be deserialized properly.\nPlease register this type using Codec.registerAccountImpl\n")])]),t._v(" "),s("div",{staticClass:"line-numbers-wrapper"},[s("span",{staticClass:"line-number"},[t._v("1")]),s("br"),s("span",{staticClass:"line-number"},[t._v("2")]),s("br")])])]),t._v(" "),s("h2",{attrs:{id:"working-with-custom-account-implementations"}},[s("a",{staticClass:"header-anchor",attrs:{href:"#working-with-custom-account-implementations"}},[t._v("#")]),t._v(" Working with custom account implementations")]),t._v(" "),s("p",[t._v("If the blockchain you are working with has some custom "),s("code",[t._v("AccountI")]),t._v(" implementations that you might want to work with (eg. query from the chain), you must register those types using the "),s("code",[t._v("Codec.registerAccountImpl")]),t._v(" method.")]),t._v(" "),s("p",[t._v("Such method takes as input an "),s("code",[t._v("AccountImpl")]),t._v(" instance, which must contain a "),s("code",[t._v("typeUrl")]),t._v(" of the account implementation as well as a reference to a static method that can be called to deserialize such account instance from an "),s("code",[t._v("Any")]),t._v(".")]),t._v(" "),s("p",[t._v("Note that when you want to register a custom account type, it must implement the "),s("code",[t._v("AccountI")]),t._v(" interface. The easiest way to do this is to create a wrapper around an already existing Proto message that represents an account:")]),t._v(" "),s("div",{staticClass:"language-dart line-numbers-mode"},[s("pre",{pre:!0,attrs:{class:"language-dart"}},[s("code",[s("span",{pre:!0,attrs:{class:"token comment"}},[t._v("/// IBCAccount is a wrapper around an [ibc.IBCAccount] Proto message that allows to ")]),t._v("\n"),s("span",{pre:!0,attrs:{class:"token comment"}},[t._v("/// implement the [AccountI] interface properly.")]),t._v("\n"),s("span",{pre:!0,attrs:{class:"token keyword"}},[t._v("class")]),t._v(" "),s("span",{pre:!0,attrs:{class:"token class-name"}},[t._v("IBCAccount")]),t._v(" "),s("span",{pre:!0,attrs:{class:"token keyword"}},[t._v("implements")]),t._v(" "),s("span",{pre:!0,attrs:{class:"token class-name"}},[t._v("AccountI")]),t._v(" "),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v("{")]),t._v("\n  "),s("span",{pre:!0,attrs:{class:"token keyword"}},[t._v("final")]),t._v(" "),s("span",{pre:!0,attrs:{class:"token class-name"}},[s("span",{pre:!0,attrs:{class:"token namespace"}},[t._v("ibc"),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(".")])]),t._v("IBCAccount")]),t._v(" account"),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(";")]),t._v("\n\n  "),s("span",{pre:!0,attrs:{class:"token metadata function"}},[t._v("@override")]),t._v("\n  "),s("span",{pre:!0,attrs:{class:"token class-name"}},[t._v("Int64")]),t._v(" "),s("span",{pre:!0,attrs:{class:"token keyword"}},[t._v("get")]),t._v(" accountNumber "),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v("{")]),t._v("\n    "),s("span",{pre:!0,attrs:{class:"token keyword"}},[t._v("return")]),t._v(" account"),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(".")]),t._v("accountNumber"),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(";")]),t._v("\n  "),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v("}")]),t._v("\n\n  "),s("span",{pre:!0,attrs:{class:"token metadata function"}},[t._v("@override")]),t._v("\n  "),s("span",{pre:!0,attrs:{class:"token class-name"}},[t._v("String")]),t._v(" "),s("span",{pre:!0,attrs:{class:"token keyword"}},[t._v("get")]),t._v(" address "),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v("{")]),t._v("\n    "),s("span",{pre:!0,attrs:{class:"token keyword"}},[t._v("return")]),t._v(" account"),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(".")]),t._v("address"),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(";")]),t._v("\n  "),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v("}")]),t._v("\n\n  "),s("span",{pre:!0,attrs:{class:"token metadata function"}},[t._v("@override")]),t._v("\n  "),s("span",{pre:!0,attrs:{class:"token class-name"}},[t._v("Any")]),t._v(" "),s("span",{pre:!0,attrs:{class:"token keyword"}},[t._v("get")]),t._v(" pubKey "),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v("{")]),t._v("\n    "),s("span",{pre:!0,attrs:{class:"token keyword"}},[t._v("return")]),t._v(" account"),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(".")]),t._v("pubKey"),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(";")]),t._v("\n  "),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v("}")]),t._v("\n\n  "),s("span",{pre:!0,attrs:{class:"token metadata function"}},[t._v("@override")]),t._v("\n  "),s("span",{pre:!0,attrs:{class:"token class-name"}},[t._v("Int64")]),t._v(" "),s("span",{pre:!0,attrs:{class:"token keyword"}},[t._v("get")]),t._v(" sequence "),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v("{")]),t._v("\n    "),s("span",{pre:!0,attrs:{class:"token keyword"}},[t._v("return")]),t._v(" account"),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(".")]),t._v("sequence"),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(";")]),t._v("\n  "),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v("}")]),t._v("\n  \n  "),s("span",{pre:!0,attrs:{class:"token class-name"}},[t._v("IBCAccount")]),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v("(")]),s("span",{pre:!0,attrs:{class:"token class-name"}},[s("span",{pre:!0,attrs:{class:"token namespace"}},[t._v("ibc"),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(".")])]),t._v("IBCAccount")]),t._v(" account"),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(")")]),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(":")]),t._v(" account "),s("span",{pre:!0,attrs:{class:"token operator"}},[t._v("=")]),t._v(" account"),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(";")]),t._v("\n  \n  "),s("span",{pre:!0,attrs:{class:"token keyword"}},[t._v("static")]),t._v(" "),s("span",{pre:!0,attrs:{class:"token class-name"}},[t._v("IBCAccount")]),t._v(" "),s("span",{pre:!0,attrs:{class:"token function"}},[t._v("fromAny")]),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v("(")]),s("span",{pre:!0,attrs:{class:"token class-name"}},[t._v("Any")]),t._v(" any"),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(")")]),t._v(" "),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v("{")]),t._v("\n    "),s("span",{pre:!0,attrs:{class:"token keyword"}},[t._v("final")]),t._v(" account "),s("span",{pre:!0,attrs:{class:"token operator"}},[t._v("=")]),t._v(" "),s("span",{pre:!0,attrs:{class:"token class-name"}},[s("span",{pre:!0,attrs:{class:"token namespace"}},[t._v("ibc"),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(".")])]),t._v("IBCAccount")]),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(".")]),s("span",{pre:!0,attrs:{class:"token function"}},[t._v("fromBuffer")]),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v("(")]),t._v("any"),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(".")]),t._v("value"),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(")")]),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(";")]),t._v("\n    "),s("span",{pre:!0,attrs:{class:"token keyword"}},[t._v("return")]),t._v(" "),s("span",{pre:!0,attrs:{class:"token class-name"}},[t._v("IBCAccount")]),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v("(")]),t._v("account"),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(")")]),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(";")]),t._v("\n  "),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v("}")]),t._v("\n"),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v("}")]),t._v("\n")])]),t._v(" "),s("div",{staticClass:"line-numbers-wrapper"},[s("span",{staticClass:"line-number"},[t._v("1")]),s("br"),s("span",{staticClass:"line-number"},[t._v("2")]),s("br"),s("span",{staticClass:"line-number"},[t._v("3")]),s("br"),s("span",{staticClass:"line-number"},[t._v("4")]),s("br"),s("span",{staticClass:"line-number"},[t._v("5")]),s("br"),s("span",{staticClass:"line-number"},[t._v("6")]),s("br"),s("span",{staticClass:"line-number"},[t._v("7")]),s("br"),s("span",{staticClass:"line-number"},[t._v("8")]),s("br"),s("span",{staticClass:"line-number"},[t._v("9")]),s("br"),s("span",{staticClass:"line-number"},[t._v("10")]),s("br"),s("span",{staticClass:"line-number"},[t._v("11")]),s("br"),s("span",{staticClass:"line-number"},[t._v("12")]),s("br"),s("span",{staticClass:"line-number"},[t._v("13")]),s("br"),s("span",{staticClass:"line-number"},[t._v("14")]),s("br"),s("span",{staticClass:"line-number"},[t._v("15")]),s("br"),s("span",{staticClass:"line-number"},[t._v("16")]),s("br"),s("span",{staticClass:"line-number"},[t._v("17")]),s("br"),s("span",{staticClass:"line-number"},[t._v("18")]),s("br"),s("span",{staticClass:"line-number"},[t._v("19")]),s("br"),s("span",{staticClass:"line-number"},[t._v("20")]),s("br"),s("span",{staticClass:"line-number"},[t._v("21")]),s("br"),s("span",{staticClass:"line-number"},[t._v("22")]),s("br"),s("span",{staticClass:"line-number"},[t._v("23")]),s("br"),s("span",{staticClass:"line-number"},[t._v("24")]),s("br"),s("span",{staticClass:"line-number"},[t._v("25")]),s("br"),s("span",{staticClass:"line-number"},[t._v("26")]),s("br"),s("span",{staticClass:"line-number"},[t._v("27")]),s("br"),s("span",{staticClass:"line-number"},[t._v("28")]),s("br"),s("span",{staticClass:"line-number"},[t._v("29")]),s("br"),s("span",{staticClass:"line-number"},[t._v("30")]),s("br"),s("span",{staticClass:"line-number"},[t._v("31")]),s("br"),s("span",{staticClass:"line-number"},[t._v("32")]),s("br")])]),s("p",[t._v("Once you have created your custom class, you can now register it as an "),s("code",[t._v("AccountI")]),t._v(" implementation:")]),t._v(" "),s("div",{staticClass:"language-dart line-numbers-mode"},[s("pre",{pre:!0,attrs:{class:"language-dart"}},[s("code",[s("span",{pre:!0,attrs:{class:"token keyword"}},[t._v("final")]),t._v(" implementation "),s("span",{pre:!0,attrs:{class:"token operator"}},[t._v("=")]),t._v(" "),s("span",{pre:!0,attrs:{class:"token class-name"}},[t._v("AccountImpl")]),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v("(")]),s("span",{pre:!0,attrs:{class:"token string-literal"}},[s("span",{pre:!0,attrs:{class:"token string"}},[t._v("'IBCAccount'")])]),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(",")]),t._v(" "),s("span",{pre:!0,attrs:{class:"token class-name"}},[t._v("IBCAccount")]),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(".")]),t._v("fromAny"),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(")")]),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(";")]),t._v("\n"),s("span",{pre:!0,attrs:{class:"token class-name"}},[t._v("Codec")]),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(".")]),s("span",{pre:!0,attrs:{class:"token function"}},[t._v("registerAccountImpl")]),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v("(")]),t._v("implementation"),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(")")]),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(";")]),t._v("\n")])]),t._v(" "),s("div",{staticClass:"line-numbers-wrapper"},[s("span",{staticClass:"line-number"},[t._v("1")]),s("br"),s("span",{staticClass:"line-number"},[t._v("2")]),s("br")])]),s("p",[t._v("From this point onwards, you will be able to deserialize the account properly:")]),t._v(" "),s("div",{staticClass:"language-dart line-numbers-mode"},[s("pre",{pre:!0,attrs:{class:"language-dart"}},[s("code",[s("span",{pre:!0,attrs:{class:"token class-name"}},[t._v("Codec")]),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(".")]),s("span",{pre:!0,attrs:{class:"token function"}},[t._v("deserializeAccount")]),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v("(")]),t._v("any"),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(")")]),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(";")]),t._v("\n")])]),t._v(" "),s("div",{staticClass:"line-numbers-wrapper"},[s("span",{staticClass:"line-number"},[t._v("1")]),s("br")])]),s("div",{staticClass:"custom-block warning"},[s("p",{staticClass:"custom-block-title"},[t._v("Querying a custom account")]),t._v(" "),s("p",[t._v("Since this method is also called when "),s("a",{attrs:{href:"#query-the-details-of-an-account"}},[t._v("querying an account")]),t._v(", you should call it before querying the details of an account that is represented by a custom type in order to avoid any error.")])])])}),[],!1,null,null,null);s.default=e.exports}}]);