--
-- Table structure for table `ins_cr_ln_info`
--

DROP TABLE IF EXISTS `ins_cr_ln_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cr_ln_info` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `relpc_seqno` decimal(10,0) NOT NULL COMMENT '관계자순번',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ndsno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '배서번호',
  `vald_nds_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '유효배서여부',
  `nds_ap_str_dthms` datetime NOT NULL COMMENT '배서승인시작일시',
  `nds_ap_nd_dthms` datetime NOT NULL COMMENT '배서승인종료일시',
  `ln_excdt` date DEFAULT NULL COMMENT '대출실행일자',
  `ln_endt` date DEFAULT NULL COMMENT '대출만기일자',
  `lnamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '대출금액',
  `ln_rato` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '대출이율',
  `ln_tycd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대출형태코드',
  `mnth_rfamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '월상환금액',
  `rf_tycd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상환형태코드',
  `dfr_trm` decimal(3,0) DEFAULT NULL COMMENT '거치기간',
  `nd_trm` decimal(3,0) DEFAULT NULL COMMENT '만기기간',
  `ln_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대출기관코드',
  `ln_orgnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대출기관명',
  `chrnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당자명',
  `chrps_tlano` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당자전화지역번호',
  `chrps_tltno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당자전화국번',
  `chrps_tlsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당자전화일련번호',
  `bk_lnno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '은행대출번호',
  `mnus_ln_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '마이너스대출여부',
  `mncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '화폐코드',
  `fc_lnamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '외화대출금액',
  `xcrt` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '환율',
  `fc_mnth_rfamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '외화월상환금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_cr_ln_info_00` (`plyno`,`relpc_seqno`,`ap_nddt`,`ap_strdt`,`ndsno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='계약대출정보';
