--
-- Table structure for table `met_cmn_msg`
--

DROP TABLE IF EXISTS `met_cmn_msg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `met_cmn_msg` (
  `msg_id` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '메시지ID',
  `msg_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '메시지유형코드',
  `msg_titl` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '메시지제목',
  `msgnm` varchar(500) COLLATE utf8mb4_bin NOT NULL COMMENT '메시지명',
  `msg_xpnm` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '메시지설명',
  `note_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고사항',
  `intn_org_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대외기관여부',
  `msg_tp_csfcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '메시지유형분류코드',
  `msg_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '메시지업무구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`msg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='메시지';
