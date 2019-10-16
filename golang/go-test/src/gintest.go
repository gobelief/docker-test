package pg

import "github.com/gin-gonic/gin"

func GinRun() {
	r := gin.Default()
	r.GET("/", func(c *gin.Context) {
		c.String(200, `{"msg":"Hello, Geektutu"}`)
	})
	r.Run("0.0.0.0:9001") // listen and serve on 0.0.0.0:8080
}