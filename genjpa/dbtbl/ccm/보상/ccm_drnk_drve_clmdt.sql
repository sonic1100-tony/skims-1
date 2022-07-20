--
-- Table structure for table `ccm_drnk_drve_clmdt`
--

DROP TABLE IF EXISTS `ccm_drnk_drve_clmdt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_drnk_drve_clmdt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `drnk_drve_crr_seqno` decimal(3,0) NOT NULL COMMENT '음주운전이력순번',
  `ap_str_dthms` datetime NOT NULL COMMENT '적용시작일시',
  `ap_nd_dthms` datetime NOT NULL COMMENT '적용종료일시',
  `clm_1_cr_dthms` datetime DEFAULT NULL COMMENT '사고1발생일시',
  `clm_2_cr_dthms` datetime DEFAULT NULL COMMENT '사고2발생일시',
  `clm_3_cr_dthms` datetime DEFAULT NULL COMMENT '사고3발생일시',
  `clm_4_cr_dthms` datetime DEFAULT NULL COMMENT '사고4발생일시',
  `clm_5_cr_dthms` datetime DEFAULT NULL COMMENT '사고5발생일시',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_drnk_drve_clmdt_00` (`rcp_yymm`,`rcp_nv_seqno`,`drnk_drve_crr_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='음주운전사고일자';
