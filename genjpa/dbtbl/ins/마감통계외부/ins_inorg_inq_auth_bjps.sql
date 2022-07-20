--
-- Table structure for table `ins_inorg_inq_auth_bjps`
--

DROP TABLE IF EXISTS `ins_inorg_inq_auth_bjps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_inorg_inq_auth_bjps` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `intn_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '대외기관코드',
  `inorg_dl_cd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '대외기관거래코드',
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `rgtdt` date DEFAULT NULL COMMENT '등록일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_inorg_inq_auth_bjps_00` (`intn_orgcd`,`inorg_dl_cd`,`stfno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='대외기관조회권한대상자';
