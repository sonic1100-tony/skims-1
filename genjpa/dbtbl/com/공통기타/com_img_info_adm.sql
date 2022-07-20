--
-- Table structure for table `com_img_info_adm`
--

DROP TABLE IF EXISTS `com_img_info_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_img_info_adm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `img_bsns_kyvl` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '이미지업무키값',
  `img_dcu_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '이미지문서유형코드',
  `img_1_key_vl` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이미지1KEY값',
  `img_2_key_vl` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이미지2KEY값',
  `img_3_key_vl` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이미지3KEY값',
  `img_4_key_vl` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이미지4KEY값',
  `img_5_key_vl` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이미지5KEY값',
  `img_pagct` decimal(10,0) DEFAULT NULL COMMENT '이미지페이지수',
  `img_rgt_typcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이미지등록타입코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_com_img_info_adm_00` (`img_bsns_kyvl`,`img_dcu_tpcd`),
  KEY `idx_com_img_info_adm_10` (`img_1_key_vl`)
) ENGINE=InnoDB AUTO_INCREMENT=28069 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='이미지정보관리';
