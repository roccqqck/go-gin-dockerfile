# go env
```
go env
```
```
GO111MODULE=""
GOARCH="amd64"
GOBIN=""
GOCACHE="/Users/barry/Library/Caches/go-build"
GOENV="/Users/barry/Library/Application Support/go/env"
GOEXE=""
GOEXPERIMENT=""
GOFLAGS=""
GOHOSTARCH="amd64"
GOHOSTOS="darwin"
GOINSECURE=""
GOMODCACHE="/Users/barry/.asdf/installs/golang/1.18.4/packages/pkg/mod"
GONOPROXY=""
GONOSUMDB=""
GOOS="darwin"
GOPATH="/Users/barry/.asdf/installs/golang/1.18.4/packages"
GOPRIVATE=""
GOPROXY="https://proxy.golang.org,direct"
GOROOT="/Users/barry/.asdf/installs/golang/1.18.4/go"
GOSUMDB="sum.golang.org"
GOTMPDIR=""
GOTOOLDIR="/Users/barry/.asdf/installs/golang/1.18.4/go/pkg/tool/darwin_amd64"
GOVCS=""
GOVERSION="go1.18.4"
GCCGO="gccgo"
GOAMD64="v1"
AR="ar"
CC="clang"
CXX="clang++"
CGO_ENABLED="1"
GOMOD="/dev/null"
GOWORK=""
CGO_CFLAGS="-g -O2"
CGO_CPPFLAGS=""
CGO_CXXFLAGS="-g -O2"
CGO_FFLAGS="-g -O2"
CGO_LDFLAGS="-g -O2"
PKG_CONFIG="pkg-config"
GOGCCFLAGS="-fPIC -arch x86_64 -m64 -pthread -fno-caret-diagnostics -Qunused-arguments -fmessage-length=0 -fdebug-prefix-map=/var/folders/4n/m_fgwzc95sx1kym_q86sy3mr0000gp/T/go-build1860835256=/tmp/go-build -gno-record-gcc-switches -fno-common"
```


help
```
go help env
```
```
usage: go env [-json] [-u] [-w] [var ...]

Env prints Go environment information.

By default env prints information as a shell script
(on Windows, a batch file). If one or more variable
names is given as arguments, env prints the value of
each named variable on its own line.

The -json flag prints the environment in JSON format
instead of as a shell script.

The -u flag requires one or more arguments and unsets
the default setting for the named environment variables,
if one has been set with 'go env -w'.

The -w flag requires one or more arguments of the
form NAME=VALUE and changes the default settings
of the named environment variables to the given values.

For more about environment variables, see 'go help environment'.
```

change go env
```
go env -w GOPROXY="https://gonexus.dev,direct"
```
GOPROXY alternative
1. proxy.golang.org
2. gonexus.dev
3. goproxy.io

Set the GOPROXY environment variable
```
export GOPROXY=https://goproxy.io,direct
export GOSUMDB=sum.golang.org
# or
export GOSUMDB='off'
```

Set environment variable allow bypassing the proxy for specified repos (optional)
```
export GOPRIVATE=git.mycompany.com,github.com/my/private
export GOINSECURE=private.repo.com,private2.repo.com,
```

go module
```
go mod download -x
go get -x
```




# asdf
https://asdf-vm.com/guide/getting-started.html

```
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.10.2
```

```
vim ~/.bashrc
```
```
# asdf
. $HOME/.asdf/asdf.sh
```

https://github.com/asdf-vm/asdf-plugins

```
asdf plugin add golang https://github.com/kennyp/asdf-golang.git
```


check all available golang version
```
asdf list all golang
```
```
1.17.1
1.17.2
1.17.3
1.17.4
1.17.5
1.17.6
1.17.7
1.17.8
1.17.9
1.17.10
1.17.11
1.17.12
1.18
1.18.1
1.18.2
1.18.3
1.18.4
```

Install mutliple golang version & Set environment variables
```
asdf install golang 1.18.4
asdf install golang 1.17.12
asdf list
```
```
golang
  1.18.4
  1.17.12
```

Set 1.18.4
```
asdf global golang 1.18.4
```
```
cat .tool-versions
```
```
golang 1.18.4
```
```
go env | grep -i GOROOT
```
```
GOROOT="/Users/barry/.asdf/installs/golang/1.18.4/go"
```
```
go version
```
```
go version go1.18.4 darwin/amd64
```



Set 1.17.12
```
asdf global golang 1.17.12
```
```
cat .tool-versions
```
```
golang 1.17.12
```
```
go env | grep -i GOROOT
```
```
GOROOT="/Users/barry/.asdf/installs/golang/1.17.12/go"
```
```
go version
```
```
go version go1.17.12 darwin/amd64
```





