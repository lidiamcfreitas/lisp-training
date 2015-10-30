; trata-se de um agente de reflexos simples, pois nao necessita de guardar um estado

(defstruct percepcao
    (moeda NIL) (numero-moedas 50))

(defun agente(p)
    (let    ((moeda (percepcao-moeda p))
            (capacidade (percepcao-numero-moedas p)))
            
            (cond   ((not moeda) 'ESPERAR)
                    ((and moeda (eq capacidade 50)) 'TROCA-SACO-E-ENSACA)
                    (t 'ENSACA))))

(setf p-moeda (make-percepcao :moeda T :numero-moedas 45))
(setf p-nada (make-percepcao))
(setf p-cheio (make-percepcao :moeda T :numero-moedas 50))
