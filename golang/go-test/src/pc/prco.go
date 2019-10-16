package prco

import (
	"fmt"
)

//Product 生产者
func Product(v string, c chan int,c2 chan int) {
	// fmt.Println(v)
	for index := 0; index < 20; index++ {
		fmt.Printf("%v--生产：%v\n",v,index)
		c <- index
	}
	c2 <- 1
}

//Consumer 消费者
func Consumer(v string, c chan int,c2 chan int) {
	// fmt.Println(v)
	for index := 0; index < 10; index++ {
		v2 := <-c
		fmt.Printf("%v--消费：%v\n", v, v2)
	}
	c2 <- 1
}

//Run sss
func Run() {
	channel := make(chan int, 10)
	chaNum := 3
	cha := make(chan int,chaNum)
	go Product("生产者", channel,cha)
	go Consumer("消费者1", channel,cha)
	go Consumer("消费者2", channel,cha)
	for index := 0; index < chaNum; index++ {
		<- cha
	}
}
