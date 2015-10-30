(defstruct percepcao
    lixo-p toque-p)

(defun agente (p)
    (let ((lixo (percepcao-lixo-p p))
        (toque (percepcao-toque-p p)))

        (cond   (lixo 'ASPIRAR)
                (toque 'RODAR)
                (t 'ANDAR))))
