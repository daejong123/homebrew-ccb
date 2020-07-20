package go2git

import (
	"fmt"
	"github.com/atotto/clipboard"
	"os/exec"
	"strings"
)

// ExecShell ...
func execShell(command string, arg ...string) (out string, err error) {
	var Stdout []byte
	cmd := exec.Command(command, arg...)
	Stdout, err = cmd.CombinedOutput()
	out = string(Stdout)
	return
}

// Repo ...
func Repo() (repo string, err error) {
	var (
		out string
	)
	if out, err = execShell("/bin/sh", "-c", "git remote -v"); err != nil {
		return
	}
	if repo = out[strings.Index(out, ":")+1 : strings.Index(out, ".git")]; repo == "" {
		err = fmt.Errorf("not found, %s", out)
		return
	}
	return
}

// Branch ...
func Branch() (branch string, err error) {
	var (
		out string
	)
	if out, err = execShell("/bin/sh", "-c", "git branch"); err != nil {
		return
	}
	list := strings.Split(out, "\n")
	for _, v := range list {
		if strings.HasPrefix(v, "*") {
			branch = v[strings.Index(v, "*")+2:]
			return
		}
	}
	err = fmt.Errorf("not found, %s", out)
	return
}


func CopyCurrentBranch()  {

	if currentBranch,error := Branch(); error != nil {
		fmt.Println(error.Error())
	} else {
		clipboard.WriteAll(currentBranch)
		fmt.Println("✅ ✅ 复制当前「" + currentBranch + "」成功， 去粘贴使用吧 !")
	}

}