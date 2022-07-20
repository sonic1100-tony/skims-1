--
-- Table structure for table `gea_form_etdv`
--

DROP TABLE IF EXISTS `gea_form_etdv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_form_etdv` (
  `itmcd` varchar(15) COLLATE utf8mb4_bin NOT NULL COMMENT '품목코드',
  `ntr_mfgdt` date NOT NULL COMMENT '입출고일자',
  `form_etdv_sno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '서식입출고일련번호',
  `form_ikdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '서식보종코드',
  `form_kndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '서식종류코드',
  `form_sno` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '서식일련번호',
  `form_etdv_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '서식입출고구분코드',
  `etdv_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입출고기관코드',
  `form_cdvl` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '양식코드값',
  `etdv_qant` decimal(15,0) DEFAULT NULL COMMENT '입출고수량',
  `befo_qant` decimal(15,0) DEFAULT NULL COMMENT '이전수량',
  `aft_qant` decimal(15,0) DEFAULT NULL COMMENT '이후수량',
  `etdv_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입출고직원번호',
  `dlpno` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '거래처번호',
  `rgtdt` date DEFAULT NULL COMMENT '등록일자',
  `rgt_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '등록직원번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`itmcd`,`ntr_mfgdt`,`form_etdv_sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='서식입출고';
