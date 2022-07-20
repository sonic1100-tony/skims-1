--
-- Table structure for table `com_allct_av_rle`
--

DROP TABLE IF EXISTS `com_allct_av_rle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_allct_av_rle` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rle_nm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '역할명',
  `adm_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관리기관코드',
  `adm_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관리직원번호',
  `allct_av_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '할당가능여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_com_allct_av_rle_00` (`rle_nm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='할당가능역할';
