SELECT
    DISTINCT ФИО, Номер_карты, Кредитный_лимит
FROM CreditCardInfo as cci
INNER JOIN CreditCardUploads as ccu ON cci.Номер_договора_WAY4 = ccu.Номер_договора_WAY4