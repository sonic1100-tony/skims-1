--
-- Table structure for table `ccm_swdl_bnd_rcv`
--

DROP TABLE IF EXISTS `ccm_swdl_bnd_rcv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_swdl_bnd_rcv` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `swdl_bnd_rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '사기채권접수년월',
  `swdl_bnd_rcp_sno` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '사기채권접수일련번호',
  `rcv_seqno` decimal(5,0) NOT NULL COMMENT '환수순번',
  `cidps_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피구상자서열',
  `rcamt` decimal(15,0) NOT NULL COMMENT '환수금액',
  `dprnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입금자명',
  `dpdt` date DEFAULT NULL COMMENT '입금일자',
  `chrps_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당자직원번호',
  `nvgt_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조사역직원번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_swdl_bnd_rcv_00` (`swdl_bnd_rcp_yymm`,`swdl_bnd_rcp_sno`,`rcv_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사기채권환수';
