(loop for i from 1 to 100
      do (cond ((and (= 0 (mod i 3)) (= 0 (mod i 5))) (format t "~%FizzBuzz"))
               ((= 0 (mod i 5) ) (format t "~%Buzz"))
               ((= 0 (mod i 3) ) (format t "~%Fizz"))
               (t (format t (concatenate 'string "~%" (write-to-string i))))))