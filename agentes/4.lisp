; trata-se de um agente de reflexos com modelo

(defstruct percepcao
    (moeda NIL))

(defun cria-agente()
    (let ((capacidade 50))
        #'(lambda (p)
            (let ((moeda (percepcao-moeda p)))
                (cond   ((not moeda) 'ESPERAR)
                        ((and moeda (zerop capacidade)) (setf capacidade 49)'TROCA-SACO-E-ENSACA)
                        (t (decf capacidade) 'MOEDA))))))

(setf p-moeda (make-percepcao :moeda T))
(setf p-nada (make-percepcao))
