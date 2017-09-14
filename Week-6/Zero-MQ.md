## ZERO-MQ API

------------------------------------------------------------------------

This is the **documentation of Zero MQ API with the explanation of each function**. And the **R** code to generate it.

``` r
library(rvest)
```

    ## Loading required package: xml2

``` r
library(stringr)
library(knitr)


data2 <- read_html("http://api.zeromq.org/master:_start") %>% 
  html_nodes("ul li") %>% html_text()

moddata2 <- data2 %>% str_detect("^zmq") %>% data2[.] %>% 
  str_split_fixed("-", n=2)

zmqtable <- data.frame(Functions=moddata2[,1],"What do they do"=moddata2[,2])

kable(zmqtable)
```

| Functions                     | What.do.they.do                                                           |
|:------------------------------|:--------------------------------------------------------------------------|
| zmq                           | 0MQ lightweight messaging kernel                                          |
| zmq\_atomic\_counter\_dec     | decrement an atomic counter                                               |
| zmq\_atomic\_counter\_destroy | destroy an atomic counter                                                 |
| zmq\_atomic\_counter\_inc     | increment an atomic counter                                               |
| zmq\_atomic\_counter\_new     | create a new atomic counter                                               |
| zmq\_atomic\_counter\_set     | set atomic counter to new value                                           |
| zmq\_atomic\_counter\_value   | return value of atomic counter                                            |
| zmq\_bind                     | accept incoming connections on a socket                                   |
| zmq\_close                    | close 0MQ socket                                                          |
| zmq\_connect                  | create outgoing connection from socket                                    |
| zmq\_ctx\_destroy             | terminate a 0MQ context                                                   |
| zmq\_ctx\_get                 | get context options                                                       |
| zmq\_ctx\_new                 | create new 0MQ context                                                    |
| zmq\_ctx\_set                 | set context options                                                       |
| zmq\_ctx\_shutdown            | shutdown a 0MQ context                                                    |
| zmq\_ctx\_term                | terminate a 0MQ context                                                   |
| zmq\_curve\_keypair           | generate a new CURVE keypair                                              |
| zmq\_curve\_public            | derive the public key from a private key                                  |
| zmq\_curve                    | secure authentication and confidentiality                                 |
| zmq\_disconnect               | Disconnect a socket                                                       |
| zmq\_errno                    | retrieve value of errno for the calling thread                            |
| zmq\_getsockopt               | get 0MQ socket options                                                    |
| zmq\_gssapi                   | secure authentication and confidentiality                                 |
| zmq\_has                      | check a ZMQ capability                                                    |
| zmq\_init                     | initialise 0MQ context                                                    |
| zmq\_inproc                   | 0MQ local in-process (inter-thread) communication transport               |
| zmq\_ipc                      | 0MQ local inter-process communication transport                           |
| zmq\_msg\_close               | release 0MQ message                                                       |
| zmq\_msg\_copy                | copy content of a message to another message                              |
| zmq\_msg\_data                | retrieve pointer to message content                                       |
| zmq\_msg\_gets                | get message metadata property                                             |
| zmq\_msg\_get                 | get message property                                                      |
| zmq\_msg\_init\_data          | initialise 0MQ message from a supplied buffer                             |
| zmq\_msg\_init\_size          | initialise 0MQ message of a specified size                                |
| zmq\_msg\_init                | initialise empty 0MQ message                                              |
| zmq\_msg\_more                | indicate if there are more message parts to receive                       |
| zmq\_msg\_move                | move content of a message to another message                              |
| zmq\_msg\_recv                | receive a message part from a socket                                      |
| zmq\_msg\_routing\_id         | return routing ID for message, if any                                     |
| zmq\_msg\_send                | send a message part on a socket                                           |
| zmq\_msg\_set\_routing\_id    | set routing ID property on message                                        |
| zmq\_msg\_set                 | set message property                                                      |
| zmq\_msg\_size                | retrieve message content size in bytes                                    |
| zmq\_null                     | no security or confidentiality                                            |
| zmq\_pgm                      | 0MQ reliable multicast transport using PGM                                |
| zmq\_plain                    | clear-text authentication                                                 |
| zmq\_poll                     | input/output multiplexing                                                 |
| zmq\_proxy\_steerable         | built-in 0MQ proxy with control flow                                      |
| zmq\_proxy                    | start built-in 0MQ proxy                                                  |
| zmq\_recvmsg                  | receive a message part from a socket                                      |
| zmq\_recv                     | receive a message part from a socket                                      |
| zmq\_send\_const              | send a constant-memory message part on a socket                           |
| zmq\_sendmsg                  | send a message part on a socket                                           |
| zmq\_send                     | send a message part on a socket                                           |
| zmq\_setsockopt               | set 0MQ socket options                                                    |
| zmq\_socket\_monitor          | monitor socket events                                                     |
| zmq\_socket                   | create 0MQ socket                                                         |
| zmq\_strerror                 | get 0MQ error message string                                              |
| zmq\_tcp                      | 0MQ unicast transport using TCP                                           |
| zmq\_term                     | terminate 0MQ context                                                     |
| zmq\_tipc                     | 0MQ unicast transport using TIPC                                          |
| zmq\_udp                      | 0MQ UDP multicast and unicast transport                                   |
| zmq\_unbind                   | Stop accepting connections on a socket                                    |
| zmq\_version                  | report 0MQ library version                                                |
| zmq\_vmci                     | 0MQ transport over virtual machine communicatios interface (VMCI) sockets |
| zmq\_z85\_decode              | decode a binary key from Z85 printable text                               |
| zmq\_z85\_encode              | encode a binary key as Z85 printable text                                 |
