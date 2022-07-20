--
-- Table structure for table `cus_gr_mmb_bzfml_ctm`
--

DROP TABLE IF EXISTS `cus_gr_mmb_bzfml_ctm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_gr_mmb_bzfml_ctm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `gr_ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '단체고객번호',
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `gr_cop_ap_dcuno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '단체구성승인문서번호',
  `gr_cop_ap_dthms` datetime DEFAULT NULL COMMENT '단체구성승인일시',
  `depnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부서명',
  `clpnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직급명',
  `mmb_rgt_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '구성원등록상태코드',
  `prs_bzfml_ctm_seqno` decimal(10,0) DEFAULT NULL COMMENT '대표영업가족고객순번',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_gr_mmb_bzfml_ctm_00` (`gr_ctmno`,`stfno`,`ctmno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='단체구성원영업가족고객';
