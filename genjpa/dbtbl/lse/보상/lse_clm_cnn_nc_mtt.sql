--
-- Table structure for table `lse_clm_cnn_nc_mtt`
--

DROP TABLE IF EXISTS `lse_clm_cnn_nc_mtt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_clm_cnn_nc_mtt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `nc_mtt_crr_seqno` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '알릴사항이력순번',
  `lsetm_nc_mtt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '손사알릴사항구분코드',
  `nc_mtt_dt_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '알릴사항상세내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_clm_cnn_nc_mtt_00` (`rcp_yymm`,`rcp_nv_seqno`,`nc_mtt_crr_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사고관련알릴사항';
