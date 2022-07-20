--
-- Table structure for table `lse_ibnf_py_thrps_invtn`
--

DROP TABLE IF EXISTS `lse_ibnf_py_thrps_invtn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_ibnf_py_thrps_invtn` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `seqno` decimal(5,0) NOT NULL COMMENT '순번',
  `thrps_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '제3자유형코드',
  `thrps_invtn_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '제3자개입유형코드',
  `pst_orgnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소속기관명',
  `nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '성명',
  `tlano` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화지역번호',
  `tltno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화국번',
  `tlsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화일련번호',
  `rgt_rs` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '등록사유',
  `relmn_nm_1` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관련인성명1',
  `relmn_nm_2` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관련인성명2',
  `thrps_rech_bhvr_et_rs` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '제3자위법행위기타사유',
  `thrps_rech_bhvr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '제3자위법행위구분코드',
  `issu_cvr_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '쟁점담보유형코드',
  `issu_cvr_et_rs` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '쟁점담보기타사유',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_ibnf_py_thrps_invtn_00` (`rcp_yymm`,`rcp_nv_seqno`,`seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='보험금지급제3자개입';
