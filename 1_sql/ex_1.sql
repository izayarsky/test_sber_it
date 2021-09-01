SELECT
    Номер_ВСП as n_vsp,
    MAX(Платеж) as m_p
FROM CreditCardInfo
GROUP BY n_vsp