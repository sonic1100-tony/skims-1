--
-- Table structure for table `ins_cr_cr_noty`
--

DROP TABLE IF EXISTS `ins_cr_cr_noty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cr_cr_noty` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `stdt` date NOT NULL COMMENT '기준일자',
  `noty_usecd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '알림용도코드',
  `noty_bj_cmpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '알림대상회사코드',
  `noty_bj_chncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '알림대상채널코드',
  `noty_bj_car_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '알림대상차량분류코드',
  `noty_bj_catcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '알림대상차종코드',
  `bfyy_cmp_rt` decimal(12,2) DEFAULT NULL COMMENT '전년대비비율',
  `bfmm_cmp_rt` decimal(12,2) DEFAULT NULL COMMENT '전월대비비율',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_cr_cr_noty_00` (`st_yymm`,`stdt`,`noty_usecd`,`noty_bj_cmpcd`,`noty_bj_chncd`,`noty_bj_car_csfcd`,`noty_bj_catcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자동차계약알림';
