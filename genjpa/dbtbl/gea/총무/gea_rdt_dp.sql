--
-- Table structure for table `gea_rdt_dp`
--

DROP TABLE IF EXISTS `gea_rdt_dp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_rdt_dp` (
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `aseno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '자산번호',
  `re_vlbe_cqamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '재평가전취득가액',
  `cq_vlamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '취득가액',
  `pter_sramt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '전기말잔존가액',
  `cutnd_rdt_dpcs` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당기말감가상각비',
  `cm_rdt_dpcs` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당월감가상각비',
  `cutnd_sramt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당기말잔존가액',
  `cap_exp_asamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '자본지출자산금액',
  `cap_exp_pvamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '자본지출충당금액',
  `note_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고사항',
  `wst_cutnd_rdt_dpcs` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '폐기당기말감가상각비',
  `wst_cm_rdt_dpcs` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '폐기당월감가상각비',
  `wst_cutnd_sramt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '폐기당기말잔존가액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`st_yymm`,`aseno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='감가상각';
