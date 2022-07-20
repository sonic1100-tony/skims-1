--
-- Table structure for table `cus_ins_ntcda_adx_file`
--

DROP TABLE IF EXISTS `cus_ins_ntcda_adx_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_ins_ntcda_adx_file` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcpno` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '접수번호',
  `prg_seqno` decimal(3,0) NOT NULL COMMENT '진행순번',
  `adx_file_seqno` decimal(3,0) NOT NULL COMMENT '첨부파일순번',
  `rgt_dthms` datetime DEFAULT NULL COMMENT '등록일시',
  `rgtr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '등록자직원번호',
  `file_kndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '파일종류코드',
  `finm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '파일명',
  `file_autcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '파일권한코드',
  `adx_file_rltno` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '첨부파일연계번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_ins_ntcda_adx_file_00` (`rcpno`,`prg_seqno`,`adx_file_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='보험안내자료첨부파일';
