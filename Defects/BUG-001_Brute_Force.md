# 🐛 BUG-001: Brute-Force Protection Failure
**Severity:** Critical | **Priority:** High

## Description
Sistem 3 uğursuz cəhddən sonra hesabı bloklamır. Bu, təhlükəsizlik boşluğudur.

## Steps to Reproduce
1. Login səhifəsinə daxil ol.
2. Səhv şifrəni 5 dəfə daxil et.
3. 6-cı cəhddə düzgün şifrəni daxil et.

## Actual Result
İstifadəçi bloklanmadı və sistemə giriş etdi.

## Expected Result
3-cü cəhddən sonra hesab 15 dəqiqəlik bloklanmalı idi.
