--
-- Table structure for table `ins_inscp_cl_cmpr_ntc`
--

DROP TABLE IF EXISTS `ins_inscp_cl_cmpr_ntc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_inscp_cl_cmpr_ntc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rsno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '주민등록번호',
  `ins_cmpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험회사코드',
  `crdis_plyno` varchar(30) COLLATE utf8mb4_bin NOT NULL COMMENT '신용정보원증권번호',
  `gn_cncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보장내용코드',
  `seqno` decimal(5,0) NOT NULL COMMENT '순번',
  `ins_cmpnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험회사명',
  `gdnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품명',
  `cr_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약상태코드',
  `cr_stnm` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약상태명',
  `cr_st_crdt` date DEFAULT NULL COMMENT '계약상태발생일자',
  `pym_prm` decimal(17,2) DEFAULT NULL COMMENT '납입보험료',
  `ins_st` date DEFAULT NULL COMMENT '보험시기',
  `ins_clstr` date DEFAULT NULL COMMENT '보험종기',
  `pym_cyccd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '납입주기코드',
  `pym_trm` decimal(3,0) DEFAULT NULL COMMENT '납입기간',
  `ins_isamt` decimal(17,2) DEFAULT NULL COMMENT '보험가입금액',
  `gn_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보장내용',
  `ibamt` decimal(17,2) DEFAULT NULL COMMENT '보험금액',
  `rlpmi_cvr_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '실손담보여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_inscp_cl_cmpr_ntc_00` (`rsno`,`ins_cmpcd`,`crdis_plyno`,`gn_cncd`,`seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=327 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='보험사별비교안내';
