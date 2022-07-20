--
-- Table structure for table `gea_ase_copgd`
--

DROP TABLE IF EXISTS `gea_ase_copgd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_ase_copgd` (
  `aseno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '자산번호',
  `cop_seqno` decimal(5,0) NOT NULL COMMENT '구성순번',
  `copgd_cd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '구성품코드',
  `copgd_frmt_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '구성품사양내용',
  `copgd_tp_csfcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '구성품유형분류코드',
  `note_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고사항',
  `autno_info` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인증번호정보',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aseno`,`cop_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자산구성품';
