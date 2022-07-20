--
-- Table structure for table `ins_er_cr_adm`
--

DROP TABLE IF EXISTS `ins_er_cr_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_er_cr_adm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `er_crdt` date NOT NULL COMMENT '오류발생일자',
  `er_cr_seqno` decimal(5,0) NOT NULL COMMENT '오류발생순번',
  `cr_er_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '계약오류유형코드',
  `er_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '오류구분코드',
  `er_cn` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '오류내용',
  `er_mng_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '오류조치직원번호',
  `cr_er_mng_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약오류조치여부',
  `er_mngdt` date DEFAULT NULL COMMENT '오류조치일자',
  `dvpns_rgt_carno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개발원등록차량번호',
  `crsdt` date DEFAULT NULL COMMENT '차량등록일자',
  `cr_dbcr_flg_inqcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량차대구분조회코드',
  `dat_inflw_ptncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '데이터유입경로코드',
  `mng_cn` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조치내용',
  `pym_hg_cn_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '납입최고해지사유코드',
  `et_rs` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기타사유',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_er_cr_adm_00` (`plyno`,`er_crdt`,`er_cr_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=276 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='오류계약관리';
