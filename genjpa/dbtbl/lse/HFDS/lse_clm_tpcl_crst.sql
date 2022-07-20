--
-- Table structure for table `lse_clm_tpcl_crst`
--

DROP TABLE IF EXISTS `lse_clm_tpcl_crst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_clm_tpcl_crst` (
  `clm_tp_sno` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '사고유형일련번호',
  `ctm_rsno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객주민번호',
  `siu_clm_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'SIU사고유형코드',
  `rcpno` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '접수번호',
  `clmdt` date NOT NULL COMMENT '사고일자',
  `rcpdt` date NOT NULL COMMENT '접수일자',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고담보코드',
  `siu_dgnnm_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'SIU진단명내용',
  `hspnm_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '병원명내용',
  `hsp_st` date DEFAULT NULL COMMENT '입원시기',
  `hsp_clstr` date DEFAULT NULL COMMENT '입원종기',
  `t_hsp_days` decimal(5,0) DEFAULT NULL COMMENT '총입원일수',
  `ins_cmpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험회사코드',
  `py_ibamt` decimal(15,0) DEFAULT '0' COMMENT '지급보험금액',
  `siu_clm_cascd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'SIU사고원인코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`clm_tp_sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사고유형별현황';
