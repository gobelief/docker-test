package prco

import (
	"fmt"
	"io"
	"os"
	"strings"
)

// "test/src/pc"

//Rot13 加解密算法
func Rot13(b byte) byte {
	switch {
		case 'A' <= b && b <= 'M':
			b = b + 13
		case 'M' < b && b <= 'Z':
			b = b - 13
		case 'a' <= b && b <= 'm':
			b = b + 13
		case 'm' < b && b <= 'z':
			b = b - 13
	}
	return b
}
type rot13Reader struct {
	r io.Reader
}
//Read 复写rot13Reader.Read方法
func (c *rot13Reader) Read(p []byte) (s int, err error) {
	s,err = (*c).r.Read(p)
	if err != io.EOF {
		for i,v := range p{
			p[i] = Rot13(v)
		}
	}
	return
}
func (c rot13Reader) String() (v string) {
	return fmt.Sprintf("BODY: %v",c.r)
}
func init()  {
	fmt.Println("======\trot13 init\t======")
}
//Rot13Run 开始执行
func Rot13Run()  {
	s := strings.NewReader("Lbh penpxrq gur pbqr!")
	r := rot13Reader{s}
	fmt.Println(r)
	io.Copy(os.Stdout, &r)
}