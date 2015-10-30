; agente de reflexos com modelo, pois sabe por quantas posicoes ja passou

(defstruct percepcao
    lixo-p)

(defun cria-agente(posicoes)
    (let ((movimentos (1- posicoes)))
        #'(lambda (p)
            (let ((lixo (percepcao-lixo-p p)))
                (cond   (lixo 'ASPIRAR)
                        ((zerop movimentos) 'ESPERAR)
                        (t (decf movimentos) 'ANDAR))))))

(setf agente (cria-agente 8))
(setf p-lixo (make-percepcao :lixo-p T))
(setf p-nada (make-percepcao :lixo-p NIL))

                        
