--
-- Table structure for table `lse_sum_obsrt`
--

DROP TABLE IF EXISTS `lse_sum_obsrt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_sum_obsrt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `dm_seqno` decimal(5,0) NOT NULL COMMENT '청구순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `clm_nv_seqno` decimal(3,0) NOT NULL COMMENT '사고조사순번',
  `mdud_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '의료심사구분코드',
  `requ_seq` decimal(3,0) NOT NULL COMMENT '의뢰회차',
  `prg_seq` decimal(5,0) NOT NULL COMMENT '진행회차',
  `mdud_dtcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '의료심사상세코드',
  `o1_dm_sum_obsrt` decimal(5,2) DEFAULT NULL COMMENT '1차청구합산장해율',
  `o2_dm_sum_obsrt` decimal(5,2) DEFAULT NULL COMMENT '2차청구합산장해율',
  `o3_dm_sum_obsrt` decimal(5,2) DEFAULT NULL COMMENT '3차청구합산장해율',
  `o4_dm_sum_obsrt` decimal(5,2) DEFAULT NULL COMMENT '4차청구합산장해율',
  `o1_md_sum_obsrt` decimal(5,2) DEFAULT NULL COMMENT '1차조정합산장해율',
  `o2_md_sum_obsrt` decimal(5,2) DEFAULT NULL COMMENT '2차조정합산장해율',
  `o3_md_sum_obsrt` decimal(5,2) DEFAULT NULL COMMENT '3차조정합산장해율',
  `o4_md_sum_obsrt` decimal(5,2) DEFAULT NULL COMMENT '4차조정합산장해율',
  `o1_py_sum_obsrt` decimal(5,2) DEFAULT NULL COMMENT '1차지급합산장해율',
  `o2_py_sum_obsrt` decimal(5,2) DEFAULT NULL COMMENT '2차지급합산장해율',
  `o3_py_sum_obsrt` decimal(5,2) DEFAULT NULL COMMENT '3차지급합산장해율',
  `o4_py_sum_obsrt` decimal(5,2) DEFAULT NULL COMMENT '4차지급합산장해율',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_sum_obsrt_00` (`rcp_yymm`,`rcp_nv_seqno`,`dm_seqno`,`clmps_seqno`,`clm_nv_seqno`,`mdud_flgcd`,`requ_seq`,`prg_seq`,`mdud_dtcd`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='합산장해율';
