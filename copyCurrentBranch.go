package go2git

import (
	"fmt"
	"github.com/atotto/clipboard"
)

func CopyCurrentBranch()  {
	fmt.Println("copy...")
	clipboard.WriteAll("hello world")
}