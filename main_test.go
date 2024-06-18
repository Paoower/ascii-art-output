package main

import (
	"bytes"
	"fmt"
	"os/exec"
	"strings"
	"testing"
)

const RED = "\033[31;1m"
const GREEN = "\033[32;1m"
const NONE = "\033[0m"

func Shellout(command string) (string, string, error) {
	var stdout bytes.Buffer
	var stderr bytes.Buffer
	cmd := exec.Command("bash", "-c", command)
	cmd.Stdout = &stdout
	cmd.Stderr = &stderr
	err := cmd.Run()
	return stdout.String(), stderr.String(), err
}

func TestWithoutCorrectStyle(t *testing.T) {
	_, _, err := Shellout("go run . --output=file.txt hello badbanner")
	if err == nil {
		t.Errorf("%vStyle not detected%v", RED, NONE)
	}
	fmt.Println(GREEN + "Passed: Fake style detected" + NONE)
}

func TestWithTwoArgs(t *testing.T) {
	out, _, _ := Shellout("go run . hello badbanner")
	if !(strings.Contains(out, "Usage")) {
		t.Errorf("%vHelp not shown%v", RED, NONE)
	}
	fmt.Println(GREEN + "Passed: Bad number of args detected" + NONE)
}

func TestWithString(t *testing.T) {
	out, _, _ := Shellout("go run . hello")
	if !(strings.Contains(out, "_")) {
		t.Errorf("%vHelp not shown%v", RED, NONE)
	}
	fmt.Println(GREEN + "Passed: Correct Output" + NONE)
}
