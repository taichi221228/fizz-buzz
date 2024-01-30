(defun fizzbuzz (n)
  (cond ((= 0 (mod n 15)) "FizzBuzz")
        ((= 0 (mod n 5)) "Buzz")
        ((= 0 (mod n 3)) "Fizz")
        (t n)))

(loop for i from 1 to 100
      do (format t "~a~%" (fizzbuzz i)))
