--
-- Table structure for table `ins_dvpns_tlm_inq_adm`
--

DROP TABLE IF EXISTS `ins_dvpns_tlm_inq_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_dvpns_tlm_inq_adm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `tlm_opndt` date NOT NULL COMMENT '전문개시일자',
  `tlm_opn_hms` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '전문개시시간',
  `tlm_admno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '전문관리번호',
  `tlm_ts_seqno` decimal(5,0) NOT NULL COMMENT '전문전송순번',
  `tlm_specd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전문종별코드',
  `tlm_spe_dtcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전문종별세부코드',
  `sndr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '송신자직원번호',
  `dat_lngth` decimal(4,0) DEFAULT NULL COMMENT '데이터길이',
  `dvpns_us_oj_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개발원이용목적구분코드',
  `nrdps_rsno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자주민번호',
  `msg_typ` varchar(2) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '메시지타입',
  `anscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '응답코드',
  `tlm_inq_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전문조회유형코드',
  `bsns_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무구분코드',
  `agre_admno` varchar(14) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '동의관리번호',
  `dcuno` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '문서번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_dvpns_tlm_inq_adm_00` (`tlm_opndt`,`tlm_opn_hms`,`tlm_admno`,`tlm_ts_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='개발원전문조회관리';
