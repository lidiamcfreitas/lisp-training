(defstruct percepcao
    lixo-p toque-p)

(defun random-element (list)
  "Return some element of the list, chosen at random."
    (nth (random (length list)) list))


(defun agente(p)
    (let    ((lixo (percepcao-lixo-p p))
            (toque (percepcao-toque-p p)))
            
            (cond   (lixo 'LIMPAR)
                    (toque 'RODAR)
                    (t  (random-element '('RODAR 'ANDAR))))))

(setf p-lixo (make-percepcao :lixo-p T :toque-p NIL))
(setf p-toque (make-percepcao :lixo-p NIL :toque-p T))
(setf p-nada (make-percepcao :lixo-p NIL :toque-p NIL))
            
