; penso que e um agente baseado em utilidade, porque para alem de se preocupar em chegar ao objectivo (posicao), tambem escolhe o caminho mais rapido

(defstruct percepcao
    (n 0))

(defun cria-agente()
    (let ((posicao 0))
        #'(lambda (p)
            (let ((objectivo (percepcao-n p)))
                (format t "~d" posicao)
                (cond   ((= objectivo posicao) 'ESPERAR)
                        ((< (- 10 (mod (- objectivo posicao) 10)) 
                            (mod (- objectivo posicao) 10)) 
                                ; esquerda e melhor
                                (setf posicao (mod (+ posicao 9) 10))
                                'ANDA-)
                        (t (setf posicao (mod (+ posicao 11) 10)) 'ANDA+))))))

