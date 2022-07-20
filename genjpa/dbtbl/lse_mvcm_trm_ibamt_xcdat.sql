--
-- Table structure for table `lse_mvcm_trm_ibamt_xcdat`
--

DROP TABLE IF EXISTS `lse_mvcm_trm_ibamt_xcdat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_mvcm_trm_ibamt_xcdat` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `cls_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '마감년월',
  `trm_srvno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '단말기서비스번호',
  `at_sno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '할부일련번호',
  `xc_da_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '정산자료구분코드',
  `da_seqno` decimal(7,0) NOT NULL COMMENT '자료순번',
  `trm_sno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '단말기일련번호',
  `apdt` date DEFAULT NULL COMMENT '승인일자',
  `trm_chdt` date DEFAULT NULL COMMENT '단말기변경일자',
  `trm_suamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '단말기지원금액',
  `trm_dl_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '단말기처리구분코드',
  `trmam` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '단말기금액',
  `xc_seq` decimal(5,0) DEFAULT NULL COMMENT '정산회차',
  `brkpr_amt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '위약금액',
  `wddt` date DEFAULT NULL COMMENT '철회일자',
  `trm_srv_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '단말기서비스상태코드',
  `sl_itcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '매출항목코드',
  `srv_isrdt` date DEFAULT NULL COMMENT '서비스가입일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_mvcm_trm_ibamt_xcdat_00` (`cls_yymm`,`trm_srvno`,`at_sno`,`xc_da_flgcd`,`da_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='이동통신단말기보험금정산DATA';
