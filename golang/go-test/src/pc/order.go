package prco

import (
	"fmt"
	"time"
)

//OrderProduct 生产者
func OrderProduct(c chan int, c2 chan int) {
	fmt.Printf("###### 开始生产\n")
	for index := 1; index < 21; index++ {
		c <- index
	}
	c2 <- 1
	fmt.Printf("###### 生产结束\n")

}

//OrderConsumer 消费者
func OrderConsumer(name string, c chan int, c2 chan int) {
	fmt.Printf("###### %v-开始准备消费\n", name)
	for index := 1; ; index++ {
		time.Sleep(100 * time.Millisecond)
		v := <-c
		if v >= 19 {
			c <- v
			break
		}
		fmt.Printf("\t%v-开始消费,product:%v\n", name, v)

	}
	c2 <- 1
}
func init() {
	fmt.Println("======\tprco order init\t======")
}

//OrderRun is run
func OrderRun() {
	product := make(chan int, 20)
	chanl := make(chan int, 4)
	go OrderProduct(product, chanl)
	go OrderConsumer("con1", product, chanl)
	go OrderConsumer("con2", product, chanl)
	go OrderConsumer("con3", product, chanl)
	for index := 0; index < 4; index++ {
		<-chanl
	}
	fmt.Println("信道剩余数据: ",len(product))
}
