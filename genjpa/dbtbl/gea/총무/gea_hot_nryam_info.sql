--
-- Table structure for table `gea_hot_nryam_info`
--

DROP TABLE IF EXISTS `gea_hot_nryam_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_hot_nryam_info` (
  `hot_rgtno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '임대차등록번호',
  `dpdt` date NOT NULL COMMENT '입금일자',
  `hot_dp_seqno` decimal(3,0) NOT NULL COMMENT '임대차입금순번',
  `dpamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '입금금액',
  `nryam` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '미회수금액',
  `xc_tblam` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '정산잔액',
  `dprc_ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입금자고객번호',
  `note_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고사항',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`hot_rgtno`,`dpdt`,`hot_dp_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='임대차미회수금정보';
