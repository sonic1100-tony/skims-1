--
-- Table structure for table `ins_nlisr_asso_cr_inq`
--

DROP TABLE IF EXISTS `ins_nlisr_asso_cr_inq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_nlisr_asso_cr_inq` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `tlm_opndt` date NOT NULL COMMENT '전문개시일자',
  `tlm_admno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '전문관리번호',
  `tlm_ts_seqno` decimal(5,0) NOT NULL COMMENT '전문전송순번',
  `cr_seqno` decimal(7,0) NOT NULL COMMENT '발생순번',
  `ins_cmpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험회사코드',
  `nlisr_asso_plyno` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '손보협회증권번호',
  `ins_kndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험종류코드',
  `gdnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품명',
  `cnrdt` date DEFAULT NULL COMMENT '계약일자',
  `cr_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약상태코드',
  `ins_st` date DEFAULT NULL COMMENT '보험시기',
  `ins_clstr` date DEFAULT NULL COMMENT '보험종기',
  `sl_chncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '판매채널코드',
  `prm` decimal(17,2) DEFAULT '0.00' COMMENT '보험료',
  `crrnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약자명',
  `nrdnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자명',
  `jbcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직업코드',
  `jbnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직업명',
  `rk_grdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '위험등급코드',
  `catcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차종코드',
  `crct` decimal(7,0) DEFAULT NULL COMMENT '계약건수',
  `ctrt_ct` decimal(5,0) DEFAULT NULL COMMENT '집중건수',
  `mn_ct` decimal(7,0) DEFAULT NULL COMMENT '유지건수',
  `lap_ct` decimal(5,0) DEFAULT NULL COMMENT '실효건수',
  `crt_rsno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약자주민번호',
  `ce_orgnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '모집기관명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_nlisr_asso_cr_inq_00` (`tlm_opndt`,`tlm_admno`,`tlm_ts_seqno`,`cr_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='손보협회계약조회';
