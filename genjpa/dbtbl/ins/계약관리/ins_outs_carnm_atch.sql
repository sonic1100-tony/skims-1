--
-- Table structure for table `ins_outs_carnm_atch`
--

DROP TABLE IF EXISTS `ins_outs_carnm_atch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_outs_carnm_atch` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `stdt` date NOT NULL COMMENT '기준일자',
  `outs_nw_cnmcd` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '외부신차명코드',
  `atch_no` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '부속번호',
  `modl_no` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '모델번호',
  `grd_no` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '등급번호',
  `atch_nm` varchar(300) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부속명',
  `atch_pstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부속위치코드',
  `atch_prc` decimal(15,0) DEFAULT NULL COMMENT '부속가격',
  `atch_st_yr` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부속기준년도',
  `atch_stdmm` varchar(2) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부속기준월',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_outs_carnm_atch_00` (`stdt`,`outs_nw_cnmcd`,`atch_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='외부차명부속';
