RUST_PROFILE?=release
LISP_SRC=krypt.asd keyutils.lisp pkg.lisp proto.lisp krypt.lisp
RUST_SRC=Cargo.toml src/*
LL=--eval '(asdf:load-asd "krypt.asd")' --eval '(ql:quickload :krypt)'
L?=sbcl --noinform --non-interactive $(LL)
R?=cargo
all:lisp rust
.PHONY:clean
lisp:lc
lc:$(LISP_SRC);$(L) --eval '(asdf:compile-system :krypt)'
rust:rb
rb:$(RUST_SRC);$(R) build --profile $(RUST_PROFILE)
clean:;rm -rf target Cargo.lock *.fasl
