RUST_PROFILE?=release
LISP_SRC=krypt.asd lisp/*
RUST_SRC=Cargo.toml rust/*
LL=--eval '(asdf:load-asd "krypt.asd")' --eval '(ql:quickload :krypt)'
L?=sbcl --noinform --non-interactive $(LL)
R?=cargo
all:lisp rust
.PHONY:clean

clean:;rm -rf target Cargo.lock *.fasl

lisp:lc
lc:$(LISP_SRC);$(L) --eval '(asdf:compile-system :krypt)'

rust:rb
rb:$(RUST_SRC);$(R) build --profile $(RUST_PROFILE)


