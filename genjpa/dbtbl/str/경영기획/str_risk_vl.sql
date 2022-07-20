--
-- Table structure for table `str_risk_vl`
--

DROP TABLE IF EXISTS `str_risk_vl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_risk_vl` (
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `risk_pg_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '리스크프로그램구분코드',
  `vl_itcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '평가항목코드',
  `orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '기관코드',
  `vldt` date NOT NULL COMMENT '평가일자',
  `vl_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '평가직원번호',
  `vl_grd_poct` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '평가등급점수',
  `md_grd_poct` decimal(7,0) DEFAULT NULL COMMENT '조정등급점수',
  `md_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조정직원번호',
  `chk_cn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '점검내용',
  `pout_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특이사항',
  `ref_da_cn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '참고자료내용',
  `vl_cplt_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '평가완료여부',
  `vl_ctn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '평가의견',
  `mpv_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개선사항',
  `cnf_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '확인직원번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`st_yymm`,`risk_pg_flgcd`,`vl_itcd`,`orgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='리스크평가';
