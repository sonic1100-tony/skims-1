--
-- Table structure for table `ins_pr_vcr_ch_mtt`
--

DROP TABLE IF EXISTS `ins_pr_vcr_ch_mtt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_pr_vcr_ch_mtt` (
  `ttins_is_rqno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '권리보험가입의뢰번호',
  `ttins_ch_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '권리보험변경구분코드',
  `seqno` decimal(5,0) NOT NULL COMMENT '순번',
  `chdt` date DEFAULT NULL COMMENT '변경일자',
  `ch_hms` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경시각',
  `ch_plc` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경장소',
  `ch_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경여부',
  `vcr_rs` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대행사유',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`ttins_is_rqno`,`ttins_ch_flgcd`,`seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='질권대행변경사항';
