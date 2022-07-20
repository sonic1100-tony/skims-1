--
-- Table structure for table `cus_ctm_dsc_info_ch_rq`
--

DROP TABLE IF EXISTS `cus_ctm_dsc_info_ch_rq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_ctm_dsc_info_ch_rq` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `reqno` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '요청번호',
  `reqdt` date NOT NULL COMMENT '요청일자',
  `dmd_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '요청자직원번호',
  `prv_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '결재구분코드',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_cus_ctm_dsc_info_ch_rq_00` (`reqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='고객식별정보변경요청';
