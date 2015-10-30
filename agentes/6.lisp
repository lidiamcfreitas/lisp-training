; agente de reflexos com modelo, pois mantem um estado com a pos de objectivo

(defstruct percepcao
    (n 0))

(defun cria-agente()
    (let ((objectivo 0))
        #'(lambda (p)
            (let ((num (percepcao-n p)))
                (cond   ((and (zerop num) (zerop objectivo)) 'ESPERAR)
                        ((and (zerop num) (decf objectivo) 'ANDAR))
                        (t (setf objectivo (1- num)) 'ANDAR))))))

(setf p-nada (make-percepcao))
(setf p-obj (make-percepcao :n 10)) 
