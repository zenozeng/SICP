;; 因为Scheme是应用序，所以用cond定义的new-if会导致else里的程序先于if判断发生，因此而陷入死循环。
