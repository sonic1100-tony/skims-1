--
-- Table structure for table `lse_mdud_edu`
--

DROP TABLE IF EXISTS `lse_mdud_edu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_mdud_edu` (
  `edu_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '교육년도',
  `edu_seq` decimal(3,0) NOT NULL COMMENT '교육회차',
  `lct_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '강사직원번호',
  `edu_strdt` date NOT NULL COMMENT '교육시작일자',
  `edu_nddt` date NOT NULL COMMENT '교육종료일자',
  `edu_plcnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '교육장소명',
  `cnfm_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '확인자직원번호',
  `edu_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '교육내용',
  `bjps_ctn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대상자의견',
  `cpmt_mtt` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보완사항',
  `edu_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '교육유형코드',
  `edu_main_titl` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '교육주요제목',
  `edu_prse_rptg_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '교육참석보고서유무',
  `edu_da_adx_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '교육자료첨부유무',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`edu_yr`,`edu_seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='의료심사교육';
