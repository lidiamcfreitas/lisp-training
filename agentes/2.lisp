(defstruct percepcao
    lixo-p toque-p)

(defun cria-agente ()
    (let (  (espacos 3)
            (andou NIL))
            
            #'(lambda (p)
                (let    ((lixo (percepcao-lixo-p p))
                        (toque (percepcao-toque-p p)))
            
                        (cond   ((zerop espacos) 'ESPERAR)
                            (lixo 'LIMPAR)
                            ((not andou) (setf andou T) (decf espacos) 'ANDAR)
                            (t (setf andou NIL) 'RODAR))))))

(setf p-lixo (make-percepcao :lixo-p T :toque-p NIL))
(setf p-nada (make-percepcao :lixo-p NIL :toque-p NIL))

(setf agente (cria-agente))


