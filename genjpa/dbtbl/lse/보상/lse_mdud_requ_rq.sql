--
-- Table structure for table `lse_mdud_requ_rq`
--

DROP TABLE IF EXISTS `lse_mdud_requ_rq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_mdud_requ_rq` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `dm_seqno` decimal(5,0) NOT NULL COMMENT '청구순번',
  `bj_rgt_seqno` decimal(5,0) NOT NULL COMMENT '대상등록순번',
  `opccs_ud_rq_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수술비심사요청여부',
  `trpa_ud_rq_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '진료비심사요청여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_mdud_requ_rq_00` (`rcp_yymm`,`rcp_nv_seqno`,`dm_seqno`,`bj_rgt_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='의료심사의뢰요청';
