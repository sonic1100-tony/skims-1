--
-- Table structure for table `str_onsf_chk_rst`
--

DROP TABLE IF EXISTS `str_onsf_chk_rst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_onsf_chk_rst` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `onsf_chk_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '자체점검구분코드',
  `wrter_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '작성자기관코드',
  `wrt_dthms` datetime NOT NULL COMMENT '작성일시',
  `cn_seqno` decimal(5,0) NOT NULL COMMENT '내용순번',
  `chk_cn` varchar(2000) COLLATE utf8mb4_bin NOT NULL COMMENT '점검내용',
  `chk_rst_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '점검결과내용',
  `mng_cn` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조치내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_str_onsf_chk_rst_00` (`onsf_chk_flgcd`,`wrter_orgcd`,`wrt_dthms`,`cn_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자체점검결과';
