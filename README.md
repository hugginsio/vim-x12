# vim-x12

A very simple [X12 EDI][x12-edi] syntax highlighting plugin for Vim.

Reading X12 EDI documents give you headaches? Adding syntax highlighting makes a pretty big difference when you are trying to parse the contents of a one-thousand-line EDI 210.

## FAQ

> What's X12 EDI?

```
ISA*00*          *00*          *ZZ*STEDI          *ZZ*ACME           *210901*1234*U*00801*000000001*0*T*>~
GS*PO*SENDERGS*007326879*20210901*1234*000000001*X*008020~
ST*850*000000001~
BEG*24*SP*PO-00001**20210901~
N1*2L*STEDI INC.~
REF*K6*The EDI platfrom for developers~
PER*SR**EA*team@stedi.com~
PO1**1*1N*500*PM*GE*Stedi Core~
PO1**1*C0*0.001*PE*GE*Mappings~
CTT*2~
SE*9*000000001~
GE*1*000000001~
IEA*1*000000001~
```

> Why is this not highlighting \<item\> correctly?

This syntax plugin is incredibly simple, and built around the documents that I read on a regular basis in the transportation industry.
It isn't perfect, but I have found that it helps make larger documents easier to read.

## Contributing

Find a problem? See something that could be improved? Please open an issue! Any and all contributions are welcome.

<!-- Reference -->

[x12-edi]: https://www.stedi.com/edi
