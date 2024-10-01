-- 1
SELECT * FROM Viaggio
WHERE Durata < 15
;
-- 2
SELECT localita FROM Viaggio
WHERE Durata BETWEEN 7 AND 10
AND Costo < 500
;
-- 3
SELECT localita FROM Viaggio, Turista, Prenotazione
WHERE Prenotazione.Id_Viaggio = Viaggio.Id_Viaggio
AND Prenotazione.Id_Turista = Turista.Id_Turista
AND Nome = 'Mario'
AND Cognome = 'Rossi'
;
-- 4
SELECT Tipo_Pagamento FROM Viaggio, Turista, Prenotazione
WHERE Prenotazione.Id_Viaggio = Viaggio.Id_Viaggio
AND Prenotazione.Id_Turista = Turista.Id_Turista
AND Nome = 'Francesca'
AND Cognome = 'Verdi'
;
-- 5
SELECT localita, durata FROM Viaggio, Turista, Prenotazione
WHERE Prenotazione.Id_Viaggio = Viaggio.Id_Viaggio
AND Prenotazione.Id_Turista = Turista.Id_Turista
AND Data_prenotazione LIKE '2018-12%'
;
-- 6
SELECT Nome, Cognome, Nascita FROM Viaggio, Turista, Prenotazione
WHERE Prenotazione.Id_Viaggio = Viaggio.Id_Viaggio
AND Prenotazione.Id_Turista = Turista.Id_Turista
AND Localita = 'Berlino'
AND Tipo_Pagamento = 'Carta'
;
-- 7
SELECT Nome, Cognome, Nascita FROM Viaggio, Turista, Prenotazione
WHERE Prenotazione.Id_Viaggio = Viaggio.Id_Viaggio
AND Prenotazione.Id_Turista = Turista.Id_Turista
AND Cognome LIKE 'Ro%'
;