--
-- Table structure for table `ins_fire_ps_cstcu_psrt`
--

DROP TABLE IF EXISTS `ins_fire_ps_cstcu_psrt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_fire_ps_cstcu_psrt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ps_cstno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보유품의번호',
  `ptccd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '참여사코드',
  `psrt_1` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '보유율1',
  `psrt_2` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '보유율2',
  `bfyy_psrt_1` decimal(12,6) DEFAULT '0.000000' COMMENT '전년도보유율1',
  `bfyy_psrt_2` decimal(12,6) DEFAULT '0.000000' COMMENT '전년도보유율2',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_fire_ps_cstcu_psrt_00` (`ps_cstno`,`ptccd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='화특보유품의공동인수보유율';
