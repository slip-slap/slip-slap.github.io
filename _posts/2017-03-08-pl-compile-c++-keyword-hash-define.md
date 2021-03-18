---
layout: post
title: "C++: #include and #define"
keywords: []
description: 
category: "PL"
tags: ["c++","compile"]
---
{% include JB/setup %}

#### Background
In the C and C++ programming languages, an #include guard, sometimes called a
macro guard, header guard of file guard.


- Different naming conventions for the guard macro may be used by different programmers.
- Other common forms of the above example include **GRANDPARENT_INCLUDED**(with
  the appropriate time information substituted.) and names generated from a UUID
- Names starting with one underscore and a captial letter or and name
  containing double underscore are reserved to the languge implementation and
  should not be used by the user.


#### preprocessor
The preprocessor is supposed to deal with these keywords.
- you can treat them as a script, and preprocessor is engine to deal with them.
- c++ is crazy.

```cpp
#ifndef STOCK_HEADER
#define STOCK_HEADER 20
class StockNode{
    private:
        std::string m_date;
        double m_open_price;
        double m_high_price;
        double m_low_price;
		
    public:
        StockNode();
		StockNode(const StockNode &node);
        double getOpenPrice() const;
        double getHighPrice() const;
        double getClosePrice() const;
        void setOpenPrice(double);
        void setHighPrice(double);
        void setLowPrice(double);

    friend std::ostream& operator<<(std::ostream& out, const StockNode& node){
            out<<"open price: "<<node.m_open_price<<", high price: "<<node.m_high_price
              << " ,low price: "<<node.m_low_price;
            return out;
    }
};
#endif

```


#### Reference
1. [Include Guard](https://en.wikipedia.org/wiki/Include_guard)
