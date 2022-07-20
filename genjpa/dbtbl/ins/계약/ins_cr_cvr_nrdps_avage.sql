--
-- Table structure for table `ins_cr_cvr_nrdps_avage`
--

DROP TABLE IF EXISTS `ins_cr_cvr_nrdps_avage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cr_cvr_nrdps_avage` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '담보코드',
  `cvr_seqno` decimal(5,0) NOT NULL COMMENT '담보순번',
  `nrdps_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '피보험자구분코드',
  `nrdps_sexcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '피보험자성별코드',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ndsno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '배서번호',
  `vald_nds_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '1' COMMENT '유효배서여부',
  `nds_ap_str_dthms` datetime NOT NULL COMMENT '배서승인시작일시',
  `nds_ap_nd_dthms` datetime NOT NULL COMMENT '배서승인종료일시',
  `avg_age` decimal(3,0) DEFAULT NULL COMMENT '평균연령',
  `psct` decimal(7,0) DEFAULT NULL COMMENT '인원수',
  `gp_is_tp` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '그룹가입유형',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_cr_cvr_nrdps_avage_00` (`plyno`,`cvrcd`,`cvr_seqno`,`nrdps_flgcd`,`nrdps_sexcd`,`ap_nddt`,`ap_strdt`,`ndsno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='계약담보피보험자평균연령';
