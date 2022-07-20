--
-- Table structure for table `cus_ctm_hnd_crr`
--

DROP TABLE IF EXISTS `cus_ctm_hnd_crr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_ctm_hnd_crr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `hnd_seqno` decimal(5,0) NOT NULL COMMENT '장애순번',
  `hnd_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장애구분코드',
  `hnd_cr_dthms` datetime DEFAULT NULL COMMENT '장애발생일시',
  `hnd_nd_dthms` datetime DEFAULT NULL COMMENT '장애종료일시',
  `img_srvr_rgt_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이미지서버등록여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_ctm_hnd_crr_00` (`ctmno`,`hnd_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='고객장애이력';
