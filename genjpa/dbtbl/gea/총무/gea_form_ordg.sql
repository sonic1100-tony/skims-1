--
-- Table structure for table `gea_form_ordg`
--

DROP TABLE IF EXISTS `gea_form_ordg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_form_ordg` (
  `itmcd` varchar(15) COLLATE utf8mb4_bin NOT NULL COMMENT '품목코드',
  `ord_dt` date NOT NULL COMMENT '주문일자',
  `form_ord_sno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '서식주문일련번호',
  `form_ikdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '서식보종코드',
  `form_kndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '서식종류코드',
  `form_sno` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '서식일련번호',
  `form_ordg_st_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '서식발주상태구분코드',
  `ord_rq_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주문신청직원번호',
  `ord_ap_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주문승인직원번호',
  `ord_rq_qant` decimal(7,0) DEFAULT NULL COMMENT '주문신청수량',
  `form_rq_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '서식신청구분코드',
  `us_trm_vl` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사용기간값',
  `apdt` date DEFAULT NULL COMMENT '승인일자',
  `ap_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '승인직원번호',
  `ntg_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입고직원번호',
  `dlpno` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '거래처번호',
  `ord_qant` decimal(7,0) DEFAULT NULL COMMENT '주문수량',
  `ntg_qant` decimal(7,0) DEFAULT NULL COMMENT '입고수량',
  `ntgdt` date DEFAULT NULL COMMENT '입고일자',
  `note` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`itmcd`,`ord_dt`,`form_ord_sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='서식발주';
