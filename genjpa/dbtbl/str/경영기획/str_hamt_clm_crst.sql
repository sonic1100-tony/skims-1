--
-- Table structure for table `str_hamt_clm_crst`
--

DROP TABLE IF EXISTS `str_hamt_clm_crst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_hamt_clm_crst` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `rgt_seqno` decimal(3,0) NOT NULL COMMENT '등록순번',
  `cy_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT 'CY년도',
  `ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객번호',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험종목코드',
  `ppdt` date DEFAULT NULL COMMENT '계상일자',
  `mg_cmpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '간사회사코드',
  `tot_ibamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '전체보험금액',
  `thcp_ibamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당사보험금액',
  `net_ibamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '정미보험금액',
  `clm_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고유형코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_str_hamt_clm_crst_00` (`st_yymm`,`rgt_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='고액사고현황';
