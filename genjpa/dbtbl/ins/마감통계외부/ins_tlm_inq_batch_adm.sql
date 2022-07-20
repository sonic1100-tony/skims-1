--
-- Table structure for table `ins_tlm_inq_batch_adm`
--

DROP TABLE IF EXISTS `ins_tlm_inq_batch_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_tlm_inq_batch_adm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `tlm_wrkdt` date NOT NULL COMMENT '전문작업일자',
  `tlm_wrk_seqno` decimal(7,0) NOT NULL COMMENT '전문작업순번',
  `rcv_org` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '수신기관',
  `tlm_specd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '전문종별코드',
  `tlm_spe_dtcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '전문종별세부코드',
  `plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증권번호',
  `stdt` date DEFAULT NULL COMMENT '기준일자',
  `ltrm_inq_trm` decimal(3,0) DEFAULT NULL COMMENT '장기조회기간',
  `shtm_inq_trm` decimal(3,0) DEFAULT NULL COMMENT '단기조회기간',
  `dl_dthms` datetime DEFAULT NULL COMMENT '처리일시',
  `ers_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '삭제여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_tlm_inq_batch_adm_00` (`tlm_wrkdt`,`tlm_wrk_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='전문조회배치관리';
