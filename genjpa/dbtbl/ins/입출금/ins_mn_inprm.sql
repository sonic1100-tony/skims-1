--
-- Table structure for table `ins_mn_inprm`
--

DROP TABLE IF EXISTS `ins_mn_inprm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_mn_inprm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `incm_prm_cr_seqno` decimal(5,0) NOT NULL COMMENT '수입보험료발생순번',
  `mncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '화폐코드',
  `condt_t_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '공동인수총보험료',
  `thcp_prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '당사보험료',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_mn_inprm_00` (`plyno`,`incm_prm_cr_seqno`,`mncd`)
) ENGINE=InnoDB AUTO_INCREMENT=28257 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='화폐수입보험료';
