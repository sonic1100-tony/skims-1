--
-- Table structure for table `str_bdg_bsns_auth`
--

DROP TABLE IF EXISTS `str_bdg_bsns_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_bdg_bsns_auth` (
  `bdg_bsns_autcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '예산업무권한코드',
  `bj_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '대상기관코드',
  `asmt_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '지정기관코드',
  `asmt_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '지정직원번호',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `sbd_org_inq_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '하위기관조회여부',
  `inq_auth_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '조회권한여부',
  `note_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고사항',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`bdg_bsns_autcd`,`bj_orgcd`,`asmt_orgcd`,`asmt_stfno`,`ap_nddt`,`ap_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='예산업무권한';
