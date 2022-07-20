--
-- Table structure for table `ccm_trfx_lmamt`
--

DROP TABLE IF EXISTS `ccm_trfx_lmamt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_trfx_lmamt` (
  `adm_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '관리년월',
  `orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '기관코드',
  `tmcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '팀코드',
  `chrct_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '인물구분코드',
  `psct` decimal(7,0) DEFAULT NULL COMMENT '인원수',
  `jrd_are_dst` decimal(7,2) DEFAULT NULL COMMENT '관할구역거리',
  `jrd_are_avg_dst` decimal(7,2) DEFAULT NULL COMMENT '관할구역평균거리',
  `jrd_are_grd_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관할구역등급코드',
  `jrd_are_avg_amt` decimal(15,0) DEFAULT NULL COMMENT '관할구역평균금액',
  `jrd_are_tot_lm_amt` decimal(15,0) DEFAULT NULL COMMENT '관할구역전체한도금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`adm_yymm`,`orgcd`,`tmcd`,`chrct_flgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='교통비한도금액';
