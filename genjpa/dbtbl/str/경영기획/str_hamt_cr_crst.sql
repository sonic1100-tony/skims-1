--
-- Table structure for table `str_hamt_cr_crst`
--

DROP TABLE IF EXISTS `str_hamt_cr_crst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_hamt_cr_crst` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `rgt_seqno` decimal(3,0) NOT NULL COMMENT '등록순번',
  `cy_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT 'CY년도',
  `ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객번호',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험종목코드',
  `ppdt` date DEFAULT NULL COMMENT '계상일자',
  `mg_cmpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '간사회사코드',
  `qtrt` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '지분율',
  `tot_prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '전체보험료',
  `thcp_prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '당사보험료',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_str_hamt_cr_crst_00` (`st_yymm`,`rgt_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='고액계약현황';
