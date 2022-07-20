--
-- Table structure for table `ins_crp_entp_vl_rst`
--

DROP TABLE IF EXISTS `ins_crp_entp_vl_rst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_crp_entp_vl_rst` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `gr_ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '단체고객번호',
  `vl_seq` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '평가회차',
  `vl_dt_rst_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '평가상세결과내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_crp_entp_vl_rst_00` (`gr_ctmno`,`vl_seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='법인업체평가상세결과';
