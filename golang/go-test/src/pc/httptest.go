package prco

import (
	"log"
	"net/http"
	"fmt"
)
//String 类型
type String string
//Struct 结构体
type Struct struct {
    Greeting string
    Punct    string
    Who      string
}
func (h String) ServeHTTP(
	w http.ResponseWriter,
	r *http.Request) {
	fmt.Fprint(w, h)
}
func (h Struct) ServeHTTP(
	w http.ResponseWriter,
	r *http.Request) {
	fmt.Fprint(w, h)
	// r.Write()
}
//HttpRun 开始运行
func HttpRun() {
	// your http.Handle calls here
	http.Handle("/string", String("I'm a frayed knot."))
	http.Handle("/struct", &Struct{"Hello", ":", "Gophers!"})
	log.Fatal(http.ListenAndServe("localhost:4000", nil))
}
