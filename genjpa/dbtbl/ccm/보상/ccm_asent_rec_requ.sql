--
-- Table structure for table `ccm_asent_rec_requ`
--

DROP TABLE IF EXISTS `ccm_asent_rec_requ`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_asent_rec_requ` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `requ_seqno` decimal(5,0) NOT NULL COMMENT '의뢰순번',
  `rec_requ_dthms` datetime NOT NULL COMMENT '추천의뢰일시',
  `rec_requ_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '추천의뢰유형코드',
  `rqcl_carno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '의뢰자차량번호',
  `rqcl_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의뢰자성명',
  `requ_cn` varchar(2000) COLLATE utf8mb4_bin NOT NULL COMMENT '의뢰내용',
  `rcpr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접수자직원번호',
  `chrps_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당자직원번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_asent_rec_requ_00` (`rcp_yymm`,`rcp_nv_seqno`,`requ_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='지정업체추천의뢰';
