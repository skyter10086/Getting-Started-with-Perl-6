------------------------------------------------------------------------

This is the **documentation of ØMQ API with the explanation of each function**. And the **R** code to generate it.

This documents the **ØMQ/4.2.3 API**.

``` r
library(rvest)
```

    ## Loading required package: xml2

``` r
library(stringr)
library(knitr)
library(kableExtra)


data2 <- read_html("http://api.zeromq.org/master:_start") %>% 
  html_nodes("ul li") %>% html_text()

moddata2 <- data2 %>% str_detect("^zmq") %>% data2[.] %>% 
  str_split_fixed("-", n=2)

zmqtable <- data.frame(Functions=moddata2[,1],"What_do_they_do"=moddata2[,2])


kable(zmqtable, "html") %>%
  kable_styling(bootstrap_options = "striped")
```

<table class="table table-striped" style="margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;">
Functions
</th>
<th style="text-align:left;">
What\_do\_they\_do
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
zmq
</td>
<td style="text-align:left;">
0MQ lightweight messaging kernel
</td>
</tr>
<tr>
<td style="text-align:left;">
zmq\_atomic\_counter\_dec
</td>
<td style="text-align:left;">
decrement an atomic counter
</td>
</tr>
<tr>
<td style="text-align:left;">
zmq\_atomic\_counter\_destroy
</td>
<td style="text-align:left;">
destroy an atomic counter
</td>
</tr>
<tr>
<td style="text-align:left;">
zmq\_atomic\_counter\_inc
</td>
<td style="text-align:left;">
increment an atomic counter
</td>
</tr>
<tr>
<td style="text-align:left;">
zmq\_atomic\_counter\_new
</td>
<td style="text-align:left;">
create a new atomic counter
</td>
</tr>
<tr>
<td style="text-align:left;">
zmq\_atomic\_counter\_set
</td>
<td style="text-align:left;">
set atomic counter to new value
</td>
</tr>
<tr>
<td style="text-align:left;">
zmq\_atomic\_counter\_value
</td>
<td style="text-align:left;">
return value of atomic counter
</td>
</tr>
<tr>
<td style="text-align:left;">
zmq\_bind
</td>
<td style="text-align:left;">
accept incoming connections on a socket
</td>
</tr>
<tr>
<td style="text-align:left;">
zmq\_close
</td>
<td style="text-align:left;">
close 0MQ socket
</td>
</tr>
<tr>
<td style="text-align:left;">
zmq\_connect
</td>
<td style="text-align:left;">
create outgoing connection from socket
</td>
</tr>
<tr>
<td style="text-align:left;">
zmq\_ctx\_destroy
</td>
<td style="text-align:left;">
terminate a 0MQ context
</td>
</tr>
<tr>
<td style="text-align:left;">
zmq\_ctx\_get
</td>
<td style="text-align:left;">
get context options
</td>
</tr>
<tr>
<td style="text-align:left;">
zmq\_ctx\_new
</td>
<td style="text-align:left;">
create new 0MQ context
</td>
</tr>
<tr>
<td style="text-align:left;">
zmq\_ctx\_set
</td>
<td style="text-align:left;">
set context options
</td>
</tr>
<tr>
<td style="text-align:left;">
zmq\_ctx\_shutdown
</td>
<td style="text-align:left;">
shutdown a 0MQ context
</td>
</tr>
<tr>
<td style="text-align:left;">
zmq\_ctx\_term
</td>
<td style="text-align:left;">
terminate a 0MQ context
</td>
</tr>
<tr>
<td style="text-align:left;">
zmq\_curve\_keypair
</td>
<td style="text-align:left;">
generate a new CURVE keypair
</td>
</tr>
<tr>
<td style="text-align:left;">
zmq\_curve\_public
</td>
<td style="text-align:left;">
derive the public key from a private key
</td>
</tr>
<tr>
<td style="text-align:left;">
zmq\_curve
</td>
<td style="text-align:left;">
secure authentication and confidentiality
</td>
</tr>
<tr>
<td style="text-align:left;">
zmq\_disconnect
</td>
<td style="text-align:left;">
Disconnect a socket
</td>
</tr>
<tr>
<td style="text-align:left;">
zmq\_errno
</td>
<td style="text-align:left;">
retrieve value of errno for the calling thread
</td>
</tr>
<tr>
<td style="text-align:left;">
zmq\_getsockopt
</td>
<td style="text-align:left;">
get 0MQ socket options
</td>
</tr>
<tr>
<td style="text-align:left;">
zmq\_gssapi
</td>
<td style="text-align:left;">
secure authentication and confidentiality
</td>
</tr>
<tr>
<td style="text-align:left;">
zmq\_has
</td>
<td style="text-align:left;">
check a ZMQ capability
</td>
</tr>
<tr>
<td style="text-align:left;">
zmq\_init
</td>
<td style="text-align:left;">
initialise 0MQ context
</td>
</tr>
<tr>
<td style="text-align:left;">
zmq\_inproc
</td>
<td style="text-align:left;">
0MQ local in-process (inter-thread) communication transport
</td>
</tr>
<tr>
<td style="text-align:left;">
zmq\_ipc
</td>
<td style="text-align:left;">
0MQ local inter-process communication transport
</td>
</tr>
<tr>
<td style="text-align:left;">
zmq\_msg\_close
</td>
<td style="text-align:left;">
release 0MQ message
</td>
</tr>
<tr>
<td style="text-align:left;">
zmq\_msg\_copy
</td>
<td style="text-align:left;">
copy content of a message to another message
</td>
</tr>
<tr>
<td style="text-align:left;">
zmq\_msg\_data
</td>
<td style="text-align:left;">
retrieve pointer to message content
</td>
</tr>
<tr>
<td style="text-align:left;">
zmq\_msg\_gets
</td>
<td style="text-align:left;">
get message metadata property
</td>
</tr>
<tr>
<td style="text-align:left;">
zmq\_msg\_get
</td>
<td style="text-align:left;">
get message property
</td>
</tr>
<tr>
<td style="text-align:left;">
zmq\_msg\_init\_data
</td>
<td style="text-align:left;">
initialise 0MQ message from a supplied buffer
</td>
</tr>
<tr>
<td style="text-align:left;">
zmq\_msg\_init\_size
</td>
<td style="text-align:left;">
initialise 0MQ message of a specified size
</td>
</tr>
<tr>
<td style="text-align:left;">
zmq\_msg\_init
</td>
<td style="text-align:left;">
initialise empty 0MQ message
</td>
</tr>
<tr>
<td style="text-align:left;">
zmq\_msg\_more
</td>
<td style="text-align:left;">
indicate if there are more message parts to receive
</td>
</tr>
<tr>
<td style="text-align:left;">
zmq\_msg\_move
</td>
<td style="text-align:left;">
move content of a message to another message
</td>
</tr>
<tr>
<td style="text-align:left;">
zmq\_msg\_recv
</td>
<td style="text-align:left;">
receive a message part from a socket
</td>
</tr>
<tr>
<td style="text-align:left;">
zmq\_msg\_routing\_id
</td>
<td style="text-align:left;">
return routing ID for message, if any
</td>
</tr>
<tr>
<td style="text-align:left;">
zmq\_msg\_send
</td>
<td style="text-align:left;">
send a message part on a socket
</td>
</tr>
<tr>
<td style="text-align:left;">
zmq\_msg\_set\_routing\_id
</td>
<td style="text-align:left;">
set routing ID property on message
</td>
</tr>
<tr>
<td style="text-align:left;">
zmq\_msg\_set
</td>
<td style="text-align:left;">
set message property
</td>
</tr>
<tr>
<td style="text-align:left;">
zmq\_msg\_size
</td>
<td style="text-align:left;">
retrieve message content size in bytes
</td>
</tr>
<tr>
<td style="text-align:left;">
zmq\_null
</td>
<td style="text-align:left;">
no security or confidentiality
</td>
</tr>
<tr>
<td style="text-align:left;">
zmq\_pgm
</td>
<td style="text-align:left;">
0MQ reliable multicast transport using PGM
</td>
</tr>
<tr>
<td style="text-align:left;">
zmq\_plain
</td>
<td style="text-align:left;">
clear-text authentication
</td>
</tr>
<tr>
<td style="text-align:left;">
zmq\_poll
</td>
<td style="text-align:left;">
input/output multiplexing
</td>
</tr>
<tr>
<td style="text-align:left;">
zmq\_proxy\_steerable
</td>
<td style="text-align:left;">
built-in 0MQ proxy with control flow
</td>
</tr>
<tr>
<td style="text-align:left;">
zmq\_proxy
</td>
<td style="text-align:left;">
start built-in 0MQ proxy
</td>
</tr>
<tr>
<td style="text-align:left;">
zmq\_recvmsg
</td>
<td style="text-align:left;">
receive a message part from a socket
</td>
</tr>
<tr>
<td style="text-align:left;">
zmq\_recv
</td>
<td style="text-align:left;">
receive a message part from a socket
</td>
</tr>
<tr>
<td style="text-align:left;">
zmq\_send\_const
</td>
<td style="text-align:left;">
send a constant-memory message part on a socket
</td>
</tr>
<tr>
<td style="text-align:left;">
zmq\_sendmsg
</td>
<td style="text-align:left;">
send a message part on a socket
</td>
</tr>
<tr>
<td style="text-align:left;">
zmq\_send
</td>
<td style="text-align:left;">
send a message part on a socket
</td>
</tr>
<tr>
<td style="text-align:left;">
zmq\_setsockopt
</td>
<td style="text-align:left;">
set 0MQ socket options
</td>
</tr>
<tr>
<td style="text-align:left;">
zmq\_socket\_monitor
</td>
<td style="text-align:left;">
monitor socket events
</td>
</tr>
<tr>
<td style="text-align:left;">
zmq\_socket
</td>
<td style="text-align:left;">
create 0MQ socket
</td>
</tr>
<tr>
<td style="text-align:left;">
zmq\_strerror
</td>
<td style="text-align:left;">
get 0MQ error message string
</td>
</tr>
<tr>
<td style="text-align:left;">
zmq\_tcp
</td>
<td style="text-align:left;">
0MQ unicast transport using TCP
</td>
</tr>
<tr>
<td style="text-align:left;">
zmq\_term
</td>
<td style="text-align:left;">
terminate 0MQ context
</td>
</tr>
<tr>
<td style="text-align:left;">
zmq\_tipc
</td>
<td style="text-align:left;">
0MQ unicast transport using TIPC
</td>
</tr>
<tr>
<td style="text-align:left;">
zmq\_udp
</td>
<td style="text-align:left;">
0MQ UDP multicast and unicast transport
</td>
</tr>
<tr>
<td style="text-align:left;">
zmq\_unbind
</td>
<td style="text-align:left;">
Stop accepting connections on a socket
</td>
</tr>
<tr>
<td style="text-align:left;">
zmq\_version
</td>
<td style="text-align:left;">
report 0MQ library version
</td>
</tr>
<tr>
<td style="text-align:left;">
zmq\_vmci
</td>
<td style="text-align:left;">
0MQ transport over virtual machine communicatios interface (VMCI) sockets
</td>
</tr>
<tr>
<td style="text-align:left;">
zmq\_z85\_decode
</td>
<td style="text-align:left;">
decode a binary key from Z85 printable text
</td>
</tr>
<tr>
<td style="text-align:left;">
zmq\_z85\_encode
</td>
<td style="text-align:left;">
encode a binary key as Z85 printable text
</td>
</tr>
</tbody>
</table>
