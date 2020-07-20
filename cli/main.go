package main

import (
	"fmt"
	"os/exec"
)
import "github.com/daejong123/go2git"

func main() {
	fmt.Println("go2git")
	cmd := exec.Command("git branch")
	fmt.Println(cmd)
	go2git.CopyCurrentBranch()
}
