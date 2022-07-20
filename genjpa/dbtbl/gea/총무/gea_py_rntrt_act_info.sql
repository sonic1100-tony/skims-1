--
-- Table structure for table `gea_py_rntrt_act_info`
--

DROP TABLE IF EXISTS `gea_py_rntrt_act_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_py_rntrt_act_info` (
  `hot_rgtno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '임대차등록번호',
  `py_rntrt_act_seqno` decimal(3,0) NOT NULL COMMENT '지급임차료계좌순번',
  `py_rntrt_bj_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '지급임차료대상구분코드',
  `bkcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '은행코드',
  `py_actno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '지급계좌번호',
  `dpsr_ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '예금주고객번호',
  `dpsr_cntad` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '예금주연락처',
  `note_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고사항',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`hot_rgtno`,`py_rntrt_act_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='지급임차료계좌정보';
