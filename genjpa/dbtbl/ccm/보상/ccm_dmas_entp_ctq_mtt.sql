--
-- Table structure for table `ccm_dmas_entp_ctq_mtt`
--

DROP TABLE IF EXISTS `ccm_dmas_entp_ctq_mtt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_dmas_entp_ctq_mtt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `cprt_entp_seqno` decimal(3,0) NOT NULL COMMENT '협력업체순번',
  `dm_as_ctqcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '손해사정자격증코드',
  `ctq_ps_psct` decimal(5,0) DEFAULT NULL COMMENT '자격증보유인원수',
  `et_quf_pronm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기타자격증명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_dmas_entp_ctq_mtt_00` (`ctmno`,`cprt_entp_seqno`,`dm_as_ctqcd`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='손해사정업체자격증사항';
