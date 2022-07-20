--
-- Table structure for table `fin_rins_nd_crst_anal`
--

DROP TABLE IF EXISTS `fin_rins_nd_crst_anal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_rins_nd_crst_anal` (
  `stdt` date NOT NULL COMMENT '기준일자',
  `uc_np_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '미수미지급구분코드',
  `acc_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '계정구분코드',
  `ntacc_cd` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '계정과목코드',
  `ikd_grpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보종군코드',
  `dltcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상대처코드',
  `dh_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '취급직원번호',
  `rnd_mntct` decimal(5,0) NOT NULL COMMENT '경과개월수',
  `cr_tblam_sm` decimal(15,0) NOT NULL COMMENT '발생잔액합계',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`stdt`,`uc_np_flgcd`,`acc_flgcd`,`ntacc_cd`,`ikd_grpcd`,`dltcd`,`dh_stfno`,`rnd_mntct`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='재보험미처리현황분석';
