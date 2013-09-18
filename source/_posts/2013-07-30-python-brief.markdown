---
layout: post
title: "Python简明手册"
date: 2013-07-30 14:25
comments: true
categories: "技术技巧"
tags: [Python]
---
Python重要用法示例

>>> dir(list)
显示关键字相关的函数

>>> help(list.reverse)
查询某个函数的功能

set 让一个list变成无重复元素的set
例如：
>>> shapes = ['circle','square','triangle','circle']
>>> setOfShapes = set(shapes)
>>> setOfShapes 
set(['circle','square','triangle']) 
>>> setOfShapes.add('polygon') 
>>> 'rhombus' in setOfShapes 
False 
>>> setOfShapes - setOfFavoriteShapes 
>>> setOfShapes & setOfFavoriteShapes 
>>> setOfShapes | setOfFavoriteShapes 


map和lambda
>>> map(lambda x: x * x, [1,2,3])
[1, 4, 9]
>>> filter(lambda x: x > 3, [1,2,3,4,5,4,3,2,1])
[4, 5, 4]

Object 先定义一个类，然后给类生成实例
定义如：
class FruitShop:

    def __init__(self, name, fruitPrices):
        """
            name: Name of the fruit shop
            
            fruitPrices: Dictionary with keys as fruit 
            strings and prices for values e.g. 
            {'apples':2.00, 'oranges': 1.50, 'pears': 1.75} 
        """
        self.fruitPrices = fruitPrices
        self.name = name
        print 'Welcome to the %s fruit shop' % (name)
        
    def getCostPerPound(self, fruit):
        """
            fruit: Fruit string
        Returns cost of 'fruit', assuming 'fruit'
        is in our inventory or None otherwise
        """
        if fruit not in self.fruitPrices:
            print "Sorry we don't have %s" % (fruit)
            return None
        return self.fruitPrices[fruit]
        
    def getPriceOfOrder(self, orderList):
        """
            orderList: List of (fruit, numPounds) tuples
            
        Returns cost of orderList. If any of the fruit are  
        """ 
        totalCost = 0.0             
        for fruit, numPounds in orderList:
            costPerPound = self.getCostPerPound(fruit)
            if costPerPound != None:
                totalCost += numPounds * costPerPound
        return totalCost
    
    def getName(self):
        return self.name

