--
-- Table structure for table `ins_nrdps_prsn_spc`
--

DROP TABLE IF EXISTS `ins_nrdps_prsn_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_nrdps_prsn_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `relpc_seqno` decimal(10,0) NOT NULL COMMENT '관계자순번',
  `nrdps_prsn_spc_seqno` decimal(10,0) NOT NULL COMMENT '피보험자인원내역순번',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ndsno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '배서번호',
  `vald_nds_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '유효배서여부',
  `nds_ap_str_dthms` datetime NOT NULL COMMENT '배서승인시작일시',
  `nds_ap_nd_dthms` datetime NOT NULL COMMENT '배서승인종료일시',
  `nrdps_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '피보험자구분코드',
  `nrdps_sexcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자성별코드',
  `injr_rnkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상해급수코드',
  `trf_rnkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '교통급수코드',
  `psct` decimal(7,0) NOT NULL COMMENT '인원수',
  `ap_prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '적용보험료',
  `age` decimal(3,0) DEFAULT NULL COMMENT '연령',
  `spl_pl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '간편설계여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_nrdps_prsn_spc_00` (`plyno`,`relpc_seqno`,`nrdps_prsn_spc_seqno`,`ap_nddt`,`ap_strdt`,`ndsno`)
) ENGINE=InnoDB AUTO_INCREMENT=15418 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='피보험자인원내역';
