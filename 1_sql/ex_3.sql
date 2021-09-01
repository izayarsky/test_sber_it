SELECT
    Номер_ВСП, Номер_карты
FROM CreditCardInfo
WHERE Номер_ВСП IN (
                        SELECT
                            DISTINCT Номер_ВСП
                        FROM CreditCardInfo
                        WHERE Паспортные_данные = "12 34 567890"
                    )
                    -- на случай наличия нескольких карт у клиента с разным номером ВСП