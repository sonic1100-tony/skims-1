--
-- Table structure for table `ccm_cmp_stf_ctq_mtt`
--

DROP TABLE IF EXISTS `ccm_cmp_stf_ctq_mtt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_cmp_stf_ctq_mtt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `dm_as_ctqcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '손해사정자격증코드',
  `ctq_rgtno` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자격증등록번호',
  `ctq_cqdt` date DEFAULT NULL COMMENT '자격증취득일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_cmp_stf_ctq_mtt_00` (`stfno`,`dm_as_ctqcd`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='보상직원자격증사항';
