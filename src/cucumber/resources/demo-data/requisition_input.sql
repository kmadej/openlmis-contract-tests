INSERT INTO requisition.available_requisition_columns (id, name, label, indicator, mandatory, isDisplayRequired, canChangeOrder, canBeChangedByUser, columnType) VALUES('4a2e9fd3-1127-4b68-9912-84a5c00f6999', 'requestedQuantity', 'Requested Quantity', 'J', false, false, true, false, 'NUMERIC');
INSERT INTO requisition.available_requisition_columns (id, name, label, indicator, mandatory, isDisplayRequired, canChangeOrder, canBeChangedByUser, columnType) VALUES('5ba8b72d-277a-4da8-b10a-23f0cda23cb4', 'totalReceivedQuantity', 'Total Received Quantity', 'B', false, false, true, false, 'NUMERIC');
INSERT INTO requisition.available_requisition_columns (id, name, label, indicator, mandatory, isDisplayRequired, canChangeOrder, canBeChangedByUser, columnType) VALUES('33b2d2e9-3167-46b0-95d4-1295be9afc22', 'beginningBalance', 'Beginning Balance', 'A', false, false, true, false, 'NUMERIC');
INSERT INTO requisition.available_requisition_columns (id, name, label, indicator, mandatory, isDisplayRequired, canChangeOrder, canBeChangedByUser, columnType) VALUES('752cda76-0db5-4b6e-bb79-0f531ab78e2c', 'stockOnHand', 'Stock On Hand', 'E', false, false, true, false, 'NUMERIC');
INSERT INTO requisition.available_requisition_columns (id, name, label, indicator, mandatory, isDisplayRequired, canChangeOrder, canBeChangedByUser, columnType) VALUES('9e825396-269d-4873-baa4-89054e2722f4', 'totalConsumedQuantity', 'Total Consumed Quantity', 'C', false, false, true, false, 'NUMERIC');
INSERT INTO requisition.available_requisition_columns (id, name, label, indicator, mandatory, isDisplayRequired, canChangeOrder, canBeChangedByUser, columnType) VALUES('cd57f329-f549-4717-882e-ecbf98122c38', 'totalLossesAndAdjustments', 'Total Losses And Adjustments', 'D', false, false, true, false, 'NUMERIC');
INSERT INTO requisition.available_requisition_columns (id, name, label, indicator, mandatory, isDisplayRequired, canChangeOrder, canBeChangedByUser, columnType) VALUES('6b8d331b-a0dd-4a1f-aafb-40e6a72ab9f5', 'requestedQuantityExplanation', 'Requested Quantity Explanation', 'W', false, false, true, false, 'TEXT');
INSERT INTO requisition.available_requisition_columns (id, name, label, indicator, mandatory, isDisplayRequired, canChangeOrder, canBeChangedByUser, columnType) VALUES('2ed8c74a-f424-4742-bd14-cfbe67b6e7be', 'remarks', 'Remarks', 'L', false, false, true, false, 'TEXT');
INSERT INTO requisition.available_requisition_columns (id, name, label, indicator, mandatory, isDisplayRequired, canChangeOrder, canBeChangedByUser, columnType) VALUES('bde01507-3837-47b7-ae08-cec92c0c3cd2', 'productCode', 'Product Code', 'O', false, false, true, false, 'TEXT');
INSERT INTO requisition.available_requisition_columns (id, name, label, indicator, mandatory, isDisplayRequired, canChangeOrder, canBeChangedByUser, columnType) VALUES('e53e80de-fc63-4ecb-b6b2-ef376b34c926', 'productName', 'Product', 'N', false, false, true, false, 'TEXT');
INSERT INTO requisition.available_requisition_columns (id, name, label, indicator, mandatory, isDisplayRequired, canChangeOrder, canBeChangedByUser, columnType) VALUES('a62a5fed-c0b6-4d49-8a96-c631da0d0113', 'approvedQuantity', 'Approved Quantity', 'K', false, false, true, false, 'NUMERIC');
INSERT INTO requisition.available_requisition_columns (id, name, label, indicator, mandatory, isDisplayRequired, canChangeOrder, canBeChangedByUser, columnType) VALUES('750b9359-c097-4612-8328-d21671f88920', 'totalStockoutDays', 'Total Stockout Days', 'X', false, false, true, false, 'NUMERIC');
INSERT INTO requisition.available_requisition_columns (id, name, label, indicator, mandatory, isDisplayRequired, canChangeOrder, canBeChangedByUser, columnType) VALUES('ef524868-9d0a-11e6-80f5-76304dec7eb7', 'total', 'Total', 'Y', false, false, true, false, 'NUMERIC');
INSERT INTO requisition.available_requisition_columns (id, name, label, indicator, mandatory, isDisplayRequired, canChangeOrder, canBeChangedByUser, columnType) VALUES ('61e6d059-10ef-40c4-a6e3-fa7b9ad741ec', 'dispensingUnit', 'Unit/Unit of Issue', 'U', false, false, true, false, 'TEXT');
INSERT INTO requisition.available_requisition_columns (id, name, label, indicator, mandatory, isDisplayRequired, canChangeOrder, canBeChangedByUser, columnType) VALUES('dc9dde56-593d-4929-81be-d1faec7025a8', 'packsToShip', 'Packs To Ship', 'V', false, false, true, false, 'NUMERIC');
INSERT INTO requisition.available_requisition_columns (id, name, label, indicator, mandatory, isDisplayRequired, canChangeOrder, canBeChangedByUser, columnType) VALUES('df524868-9d0a-18e6-80f5-76304ded7ab9', 'pricePerPack', 'Price Per Pack', 'T', false, false, true, false, 'NUMERIC');
INSERT INTO requisition.available_requisition_column_sources (columnId, value) VALUES ('4a2e9fd3-1127-4b68-9912-84a5c00f6999', 'USER_INPUT');
INSERT INTO requisition.available_requisition_column_sources (columnId, value) VALUES ('5ba8b72d-277a-4da8-b10a-23f0cda23cb4', 'USER_INPUT');
INSERT INTO requisition.available_requisition_column_sources (columnId, value) VALUES ('33b2d2e9-3167-46b0-95d4-1295be9afc22', 'USER_INPUT');
INSERT INTO requisition.available_requisition_column_sources (columnId, value) VALUES ('752cda76-0db5-4b6e-bb79-0f531ab78e2c', 'USER_INPUT');
INSERT INTO requisition.available_requisition_column_sources (columnId, value) VALUES ('752cda76-0db5-4b6e-bb79-0f531ab78e2c', 'CALCULATED');
INSERT INTO requisition.available_requisition_column_sources (columnId, value) VALUES ('9e825396-269d-4873-baa4-89054e2722f4', 'USER_INPUT');
INSERT INTO requisition.available_requisition_column_sources (columnId, value) VALUES ('9e825396-269d-4873-baa4-89054e2722f4', 'CALCULATED');
INSERT INTO requisition.available_requisition_column_sources (columnId, value) VALUES ('cd57f329-f549-4717-882e-ecbf98122c38', 'USER_INPUT');
INSERT INTO requisition.available_requisition_column_sources (columnId, value) VALUES ('6b8d331b-a0dd-4a1f-aafb-40e6a72ab9f5', 'USER_INPUT');
INSERT INTO requisition.available_requisition_column_sources (columnId, value) VALUES ('2ed8c74a-f424-4742-bd14-cfbe67b6e7be', 'USER_INPUT');
INSERT INTO requisition.available_requisition_column_sources (columnId, value) VALUES ('bde01507-3837-47b7-ae08-cec92c0c3cd2', 'REFERENCE_DATA');
INSERT INTO requisition.available_requisition_column_sources (columnId, value) VALUES ('e53e80de-fc63-4ecb-b6b2-ef376b34c926', 'REFERENCE_DATA');
INSERT INTO requisition.available_requisition_column_sources (columnId, value) VALUES ('a62a5fed-c0b6-4d49-8a96-c631da0d0113', 'USER_INPUT');
INSERT INTO requisition.available_requisition_column_sources (columnId, value) VALUES ('750b9359-c097-4612-8328-d21671f88920', 'USER_INPUT');
INSERT INTO requisition.available_requisition_column_sources (columnId, value) VALUES ('ef524868-9d0a-11e6-80f5-76304dec7eb7', 'CALCULATED');
INSERT INTO requisition.available_requisition_column_sources (columnId, value) VALUES ('61e6d059-10ef-40c4-a6e3-fa7b9ad741ec', 'REFERENCE_DATA');
INSERT INTO requisition.available_requisition_column_sources (columnId, value) VALUES ('dc9dde56-593d-4929-81be-d1faec7025a8', 'CALCULATED');
INSERT INTO requisition.available_requisition_column_sources (columnId, value) VALUES ('df524868-9d0a-18e6-80f5-76304ded7ab9', 'REFERENCE_DATA');
INSERT INTO requisition.requisition_templates (SELECT * FROM json_populate_recordset(NULL::requisition.requisition_templates, '[{"id":"5a268780-fafd-4243-9551-5c7daa824913","programid":"dce17f2e-af3e-40ad-8e00-3496adef44c3"},{"id":"4b30f6c9-b84b-4f17-8173-852101a5ea29","programid":"10845cb9-d365-4aaa-badd-b4fa39c6a26a"},{"id":"f6d38acd-f928-4a23-9f03-d1b74a706baa","programid":"66032ea8-b69b-4102-a1eb-844e57143187"}]'));
INSERT INTO requisition.columns_maps (SELECT * FROM json_populate_recordset(NULL::requisition.columns_maps, '[{"key":"productCode","name":"orderableProduct.productCode","label":"Product Code","indicator":"O","source":2,"requisitiontemplate":"5a268780-fafd-4243-9551-5c7daa824913","displayorder":1,"isdisplayed":true,"requisitioncolumnid":"bde01507-3837-47b7-ae08-cec92c0c3cd2"},{"key":"productName","name":"orderableProduct.name","label":"Product","indicator":"N","source":2,"requisitiontemplate":"5a268780-fafd-4243-9551-5c7daa824913","displayorder":2,"isdisplayed":true,"requisitioncolumnid":"e53e80de-fc63-4ecb-b6b2-ef376b34c926"},{"key":"beginningBalance","name":"beginningBalance","label":"Beginning Balance","indicator":"A","source":0,"requisitiontemplate":"5a268780-fafd-4243-9551-5c7daa824913","displayorder":3,"isdisplayed":true,"requisitioncolumnid":"33b2d2e9-3167-46b0-95d4-1295be9afc22"},{"key":"totalReceivedQuantity","name":"totalReceivedQuantity","label":"Total Received Quantity","indicator":"B","source":0,"requisitiontemplate":"5a268780-fafd-4243-9551-5c7daa824913","displayorder":4,"isdisplayed":true,"requisitioncolumnid":"5ba8b72d-277a-4da8-b10a-23f0cda23cb4"},{"key":"totalConsumedQuantity","name":"totalConsumedQuantity","label":"Total Consumed Quantity","indicator":"C","source":0,"requisitiontemplate":"5a268780-fafd-4243-9551-5c7daa824913","displayorder":5,"isdisplayed":true,"requisitioncolumnid":"9e825396-269d-4873-baa4-89054e2722f4"},{"key":"totalLossesAndAdjustments","name":"totalLossesAndAdjustments","label":"Total Losses And Adjustments","indicator":"D","source":0,"requisitiontemplate":"5a268780-fafd-4243-9551-5c7daa824913","displayorder":6,"isdisplayed":true,"requisitioncolumnid":"cd57f329-f549-4717-882e-ecbf98122c38"},{"key":"stockOnHand","name":"stockOnHand","label":"Stock On Hand","indicator":"E","source":1,"requisitiontemplate":"5a268780-fafd-4243-9551-5c7daa824913","displayorder":7,"isdisplayed":true,"requisitioncolumnid":"752cda76-0db5-4b6e-bb79-0f531ab78e2c"},{"key":"requestedQuantity","name":"requestedQuantity","label":"Requested Quantity","indicator":"J","source":0,"requisitiontemplate":"5a268780-fafd-4243-9551-5c7daa824913","displayorder":8,"isdisplayed":true,"requisitioncolumnid":"4a2e9fd3-1127-4b68-9912-84a5c00f6999"},{"key":"requestedQuantityExplanation","name":"requestedQuantityExplanation","label":"Requested Quantity Explanation","indicator":"W","source":0,"requisitiontemplate":"5a268780-fafd-4243-9551-5c7daa824913","displayorder":9,"isdisplayed":true,"requisitioncolumnid":"6b8d331b-a0dd-4a1f-aafb-40e6a72ab9f5"},{"key":"approvedQuantity","name":"approvedQuantity","label":"Approved Quantity","indicator":"K","source":0,"requisitiontemplate":"5a268780-fafd-4243-9551-5c7daa824913","displayorder":10,"isdisplayed":true,"requisitioncolumnid":"a62a5fed-c0b6-4d49-8a96-c631da0d0113"},{"key":"remarks","name":"remarks","label":"Remarks","indicator":"L","source":0,"requisitiontemplate":"5a268780-fafd-4243-9551-5c7daa824913","displayorder":11,"isdisplayed":true,"requisitioncolumnid":"2ed8c74a-f424-4742-bd14-cfbe67b6e7be"},{"key":"totalStockoutDays","name":"totalStockoutDays","label":"Total Stockout Days","indicator":"X","source":0,"requisitiontemplate":"5a268780-fafd-4243-9551-5c7daa824913","displayorder":12,"isdisplayed":true,"requisitioncolumnid":"750b9359-c097-4612-8328-d21671f88920"},{"key":"total","name":"total","label":"Total","indicator":"Y","source":1,"requisitiontemplate":"5a268780-fafd-4243-9551-5c7daa824913","displayorder":13,"isdisplayed":true,"requisitioncolumnid":"ef524868-9d0a-11e6-80f5-76304dec7eb7"},{"key":"dispensingUnit","name":"orderableProduct.dispensable.dispensingUnit","label":"Unit/Unit of Issue","indicator":"U","source":2,"requisitiontemplate":"5a268780-fafd-4243-9551-5c7daa824913","displayorder":14,"isdisplayed":true,"requisitioncolumnid":"61e6d059-10ef-40c4-a6e3-fa7b9ad741ec"},{"key":"packsToShip","name":"packsToShip","label":"Packs To Ship","indicator":"V","source":1,"requisitiontemplate":"5a268780-fafd-4243-9551-5c7daa824913","displayorder":15,"isdisplayed":true,"requisitioncolumnid":"dc9dde56-593d-4929-81be-d1faec7025a8"},{"key":"pricePerPack","name":"pricePerPack","label":"Price Per Pack","indicator":"T","source":2,"requisitiontemplate":"5a268780-fafd-4243-9551-5c7daa824913","displayorder":16,"isdisplayed":true,"requisitioncolumnid":"df524868-9d0a-18e6-80f5-76304ded7ab9"},{"key":"productCode","name":"orderableProduct.productCode","label":"Product Code","indicator":"O","source":2,"requisitiontemplate":"4b30f6c9-b84b-4f17-8173-852101a5ea29","displayorder":1,"isdisplayed":true,"requisitioncolumnid":"bde01507-3837-47b7-ae08-cec92c0c3cd2"},{"key":"productName","name":"orderableProduct.name","label":"Product","indicator":"N","source":2,"requisitiontemplate":"4b30f6c9-b84b-4f17-8173-852101a5ea29","displayorder":2,"isdisplayed":true,"requisitioncolumnid":"e53e80de-fc63-4ecb-b6b2-ef376b34c926"},{"key":"beginningBalance","name":"beginningBalance","label":"Beginning Balance","indicator":"A","source":0,"requisitiontemplate":"4b30f6c9-b84b-4f17-8173-852101a5ea29","displayorder":3,"isdisplayed":true,"requisitioncolumnid":"33b2d2e9-3167-46b0-95d4-1295be9afc22"},{"key":"totalReceivedQuantity","name":"totalReceivedQuantity","label":"Total Received Quantity","indicator":"B","source":0,"requisitiontemplate":"4b30f6c9-b84b-4f17-8173-852101a5ea29","displayorder":4,"isdisplayed":true,"requisitioncolumnid":"5ba8b72d-277a-4da8-b10a-23f0cda23cb4"},{"key":"totalConsumedQuantity","name":"totalConsumedQuantity","label":"Total Consumed Quantity","indicator":"C","source":0,"requisitiontemplate":"4b30f6c9-b84b-4f17-8173-852101a5ea29","displayorder":5,"isdisplayed":true,"requisitioncolumnid":"9e825396-269d-4873-baa4-89054e2722f4"},{"key":"totalLossesAndAdjustments","name":"totalLossesAndAdjustments","label":"Total Losses And Adjustments","indicator":"D","source":0,"requisitiontemplate":"4b30f6c9-b84b-4f17-8173-852101a5ea29","displayorder":6,"isdisplayed":true,"requisitioncolumnid":"cd57f329-f549-4717-882e-ecbf98122c38"},{"key":"stockOnHand","name":"stockOnHand","label":"Stock On Hand","indicator":"E","source":1,"requisitiontemplate":"4b30f6c9-b84b-4f17-8173-852101a5ea29","displayorder":7,"isdisplayed":true,"requisitioncolumnid":"752cda76-0db5-4b6e-bb79-0f531ab78e2c"},{"key":"requestedQuantity","name":"requestedQuantity","label":"Requested Quantity","indicator":"J","source":0,"requisitiontemplate":"4b30f6c9-b84b-4f17-8173-852101a5ea29","displayorder":8,"isdisplayed":true,"requisitioncolumnid":"4a2e9fd3-1127-4b68-9912-84a5c00f6999"},{"key":"requestedQuantityExplanation","name":"requestedQuantityExplanation","label":"Requested Quantity Explanation","indicator":"W","source":0,"requisitiontemplate":"4b30f6c9-b84b-4f17-8173-852101a5ea29","displayorder":9,"isdisplayed":true,"requisitioncolumnid":"6b8d331b-a0dd-4a1f-aafb-40e6a72ab9f5"},{"key":"approvedQuantity","name":"approvedQuantity","label":"Approved Quantity","indicator":"K","source":0,"requisitiontemplate":"4b30f6c9-b84b-4f17-8173-852101a5ea29","displayorder":10,"isdisplayed":true,"requisitioncolumnid":"a62a5fed-c0b6-4d49-8a96-c631da0d0113"},{"key":"remarks","name":"remarks","label":"Remarks","indicator":"L","source":0,"requisitiontemplate":"4b30f6c9-b84b-4f17-8173-852101a5ea29","displayorder":11,"isdisplayed":true,"requisitioncolumnid":"2ed8c74a-f424-4742-bd14-cfbe67b6e7be"},{"key":"totalStockoutDays","name":"totalStockoutDays","label":"Total Stockout Days","indicator":"X","source":0,"requisitiontemplate":"4b30f6c9-b84b-4f17-8173-852101a5ea29","displayorder":12,"isdisplayed":true,"requisitioncolumnid":"750b9359-c097-4612-8328-d21671f88920"},{"key":"total","name":"total","label":"Total","indicator":"Y","source":1,"requisitiontemplate":"4b30f6c9-b84b-4f17-8173-852101a5ea29","displayorder":13,"isdisplayed":true,"requisitioncolumnid":"ef524868-9d0a-11e6-80f5-76304dec7eb7"},{"key":"packsToShip","name":"packsToShip","label":"Packs To Ship","indicator":"V","source":1,"requisitiontemplate":"4b30f6c9-b84b-4f17-8173-852101a5ea29","displayorder":14,"isdisplayed":true,"requisitioncolumnid":"dc9dde56-593d-4929-81be-d1faec7025a8"},{"key":"pricePerPack","name":"pricePerPack","label":"Price Per Pack","indicator":"T","source":2,"requisitiontemplate":"4b30f6c9-b84b-4f17-8173-852101a5ea29","displayorder":15,"isdisplayed":true,"requisitioncolumnid":"df524868-9d0a-18e6-80f5-76304ded7ab9"},{"key":"productCode","name":"orderableProduct.productCode","label":"Product Code","indicator":"O","source":2,"requisitiontemplate":"f6d38acd-f928-4a23-9f03-d1b74a706baa","displayorder":1,"isdisplayed":true,"requisitioncolumnid":"bde01507-3837-47b7-ae08-cec92c0c3cd2"},{"key":"productName","name":"orderableProduct.name","label":"Product","indicator":"N","source":2,"requisitiontemplate":"f6d38acd-f928-4a23-9f03-d1b74a706baa","displayorder":2,"isdisplayed":true,"requisitioncolumnid":"e53e80de-fc63-4ecb-b6b2-ef376b34c926"},{"key":"beginningBalance","name":"beginningBalance","label":"Beginning Balance","indicator":"A","source":0,"requisitiontemplate":"f6d38acd-f928-4a23-9f03-d1b74a706baa","displayorder":3,"isdisplayed":true,"requisitioncolumnid":"33b2d2e9-3167-46b0-95d4-1295be9afc22"},{"key":"totalReceivedQuantity","name":"totalReceivedQuantity","label":"Total Received Quantity","indicator":"B","source":0,"requisitiontemplate":"f6d38acd-f928-4a23-9f03-d1b74a706baa","displayorder":4,"isdisplayed":true,"requisitioncolumnid":"5ba8b72d-277a-4da8-b10a-23f0cda23cb4"},{"key":"totalConsumedQuantity","name":"totalConsumedQuantity","label":"Total Consumed Quantity","indicator":"C","source":0,"requisitiontemplate":"f6d38acd-f928-4a23-9f03-d1b74a706baa","displayorder":5,"isdisplayed":true,"requisitioncolumnid":"9e825396-269d-4873-baa4-89054e2722f4"},{"key":"totalLossesAndAdjustments","name":"totalLossesAndAdjustments","label":"Total Losses And Adjustments","indicator":"D","source":0,"requisitiontemplate":"f6d38acd-f928-4a23-9f03-d1b74a706baa","displayorder":6,"isdisplayed":true,"requisitioncolumnid":"cd57f329-f549-4717-882e-ecbf98122c38"},{"key":"stockOnHand","name":"stockOnHand","label":"Stock On Hand","indicator":"E","source":1,"requisitiontemplate":"f6d38acd-f928-4a23-9f03-d1b74a706baa","displayorder":7,"isdisplayed":true,"requisitioncolumnid":"752cda76-0db5-4b6e-bb79-0f531ab78e2c"},{"key":"requestedQuantity","name":"requestedQuantity","label":"Requested Quantity","indicator":"J","source":0,"requisitiontemplate":"f6d38acd-f928-4a23-9f03-d1b74a706baa","displayorder":8,"isdisplayed":true,"requisitioncolumnid":"4a2e9fd3-1127-4b68-9912-84a5c00f6999"},{"key":"requestedQuantityExplanation","name":"requestedQuantityExplanation","label":"Requested Quantity Explanation","indicator":"W","source":0,"requisitiontemplate":"f6d38acd-f928-4a23-9f03-d1b74a706baa","displayorder":9,"isdisplayed":true,"requisitioncolumnid":"6b8d331b-a0dd-4a1f-aafb-40e6a72ab9f5"},{"key":"approvedQuantity","name":"approvedQuantity","label":"Approved Quantity","indicator":"K","source":0,"requisitiontemplate":"f6d38acd-f928-4a23-9f03-d1b74a706baa","displayorder":10,"isdisplayed":true,"requisitioncolumnid":"a62a5fed-c0b6-4d49-8a96-c631da0d0113"},{"key":"remarks","name":"remarks","label":"Remarks","indicator":"L","source":0,"requisitiontemplate":"f6d38acd-f928-4a23-9f03-d1b74a706baa","displayorder":11,"isdisplayed":true,"requisitioncolumnid":"2ed8c74a-f424-4742-bd14-cfbe67b6e7be"},{"key":"totalStockoutDays","name":"totalStockoutDays","label":"Total Stockout Days","indicator":"X","source":0,"requisitiontemplate":"f6d38acd-f928-4a23-9f03-d1b74a706baa","displayorder":12,"isdisplayed":true,"requisitioncolumnid":"750b9359-c097-4612-8328-d21671f88920"},{"key":"total","name":"total","label":"Total","indicator":"Y","source":1,"requisitiontemplate":"f6d38acd-f928-4a23-9f03-d1b74a706baa","displayorder":13,"isdisplayed":true,"requisitioncolumnid":"ef524868-9d0a-11e6-80f5-76304dec7eb7"},{"key":"packsToShip","name":"packsToShip","label":"Packs To Ship","indicator":"V","source":1,"requisitiontemplate":"f6d38acd-f928-4a23-9f03-d1b74a706baa","displayorder":14,"isdisplayed":true,"requisitioncolumnid":"dc9dde56-593d-4929-81be-d1faec7025a8"},{"key":"pricePerPack","name":"pricePerPack","label":"Price Per Pack","indicator":"T","source":2,"requisitiontemplate":"f6d38acd-f928-4a23-9f03-d1b74a706baa","displayorder":15,"isdisplayed":true,"requisitioncolumnid":"df524868-9d0a-18e6-80f5-76304ded7ab9"}]'));
