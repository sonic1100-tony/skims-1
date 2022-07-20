--
-- Table structure for table `gea_lotl`
--

DROP TABLE IF EXISTS `gea_lotl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_lotl` (
  `rstm_rgtno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '부동산등록번호',
  `lotl_seqno` decimal(5,0) NOT NULL COMMENT '필지순번',
  `dcl_ldamt_stdt` date DEFAULT NULL COMMENT '공시지가기준일자',
  `lotno` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지번',
  `pstno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '우편번호',
  `ba_adr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기본주소',
  `atch_stno` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부속번지',
  `lotl_are` decimal(17,2) DEFAULT '0.00' COMMENT '필지면적',
  `dcl_ldamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '공시지가',
  `note_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고사항',
  `bldld_rt` decimal(7,2) NOT NULL DEFAULT '0.00' COMMENT '건폐율',
  `flar_rt` decimal(7,2) NOT NULL DEFAULT '0.00' COMMENT '용적율',
  `land_dstr_are` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '토지지구지역',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`rstm_rgtno`,`lotl_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='필지';
