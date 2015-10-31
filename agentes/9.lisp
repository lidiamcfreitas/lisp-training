;
(defstruct percepcao n)

(define-condition incorrect-argument (error)
   ((message :initarg :message :reader message)))

(defun cria-agente()
    (let ((posicao 1) (objectivo 1))
        #'(lambda (p)
            (let ((num (percepcao-n p)))
                
                (if (or (> num 8) (< num 0))
                    (error 'incorrect-argument :message "value shoud be between 0 and 8")
                    (progn
                        (if (not (zerop num))
                            (setf objectivo num))
                        (format t "posicao: ~d, objectivo: ~d" posicao objectivo)
                        (cond ((= objectivo posicao) 'ESPERAR)
                            ; objectivo a esquerda
                            ((and (> (- posicao objectivo) 0) (not (= 1 posicao))) (setf posicao (1- posicao)) 'ANDAR-)
                            ((not (= 8 posicao)) (setf posicao (1+ posicao)) 'ANDAR+))))))))

(setf agente (cria-agente))
(setf p0 (make-percepcao :n 0))
(setf p1 (make-percepcao :n 1))
(setf p2 (make-percepcao :n 2))
(setf p3 (make-percepcao :n 3))
(setf p4 (make-percepcao :n 4))
(setf p5 (make-percepcao :n 5))
(setf p6 (make-percepcao :n 6))
(setf p7 (make-percepcao :n 7))
(setf p8 (make-percepcao :n 8))


            
