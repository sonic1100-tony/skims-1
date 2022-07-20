--
-- Table structure for table `ins_ud_dcn_psrt`
--

DROP TABLE IF EXISTS `ins_ud_dcn_psrt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_ud_dcn_psrt` (
  `plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호',
  `udno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '심사번호',
  `lctcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '소재지코드',
  `lctn_nm` varchar(200) COLLATE utf8mb4_bin NOT NULL COMMENT '소재지명',
  `dcn_psrt` decimal(3,0) NOT NULL COMMENT '확정보유율',
  `krre_dcn_psrt` decimal(3,0) NOT NULL COMMENT '코리안리확정보유율',
  `hann_dcn_psrt` decimal(3,0) NOT NULL COMMENT '하노버리확정보유율',
  `expt_dcn_psrt` decimal(3,0) NOT NULL COMMENT '그외확정보유율',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`plno`,`udno`,`lctcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='심사확정보유율';
