#!/bin/sh

cd "$(dirname "$0")"
cd ./

xcrun clang C.m -c -o C.o
xcrun swiftc -c S.swift -import-objc-header C.h
xcrun swiftc -o app C.o S.o
