--
-- Table structure for table `fin_dl_grttg_er_omit`
--

DROP TABLE IF EXISTS `fin_dl_grttg_er_omit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_dl_grttg_er_omit` (
  `deldt` date NOT NULL COMMENT '거래일자',
  `lpnt_dl_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '엘포인트거래구분코드',
  `dlno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '거래번호',
  `er_omit_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '오류누락구분코드',
  `cnf_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '확인여부',
  `adm_cn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관리내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`deldt`,`lpnt_dl_flgcd`,`dlno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='거래대사오류누락';
