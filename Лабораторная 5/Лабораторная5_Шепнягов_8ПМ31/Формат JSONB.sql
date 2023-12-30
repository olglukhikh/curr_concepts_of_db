-- Добавление нового столбца формата JSONB
ALTER TABLE client
ADD COLUMN client_info JSONB;

-- Добавление данных в столбце client_info
UPDATE client
SET client_info=
	CASE
		WHEN client_id=1 THEN JSONB_BUILD_OBJECT('company_name', 'ABC Inc.', 'legal_address', '123 Main St, CityA, CountryX', 'bank_account', '1234567890')
		WHEN client_id=2 THEN JSONB_BUILD_OBJECT('company_name', 'XYZ Corporation', 'legal_address', '456 Oak Ave, CityB, CountryY', 'bank_account', '9876543210')
		WHEN client_id=3 THEN JSONB_BUILD_OBJECT('company_name', 'EFG Ltd.', 'legal_address', '789 Elm St, CityC, CountryZ', 'bank_account', '4567890123')
	END;
	
-- Удаление ненужных столбцов
ALTER TABLE client
DROP COLUMN company_name,
DROP COLUMN legal_address,
DROP COLUMN bank_account;