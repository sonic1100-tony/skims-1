--
-- Table structure for table `ins_cr_oj_self_chamt`
--

DROP TABLE IF EXISTS `ins_cr_oj_self_chamt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cr_oj_self_chamt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `oj_seqno` decimal(5,0) NOT NULL COMMENT '목적물순번',
  `lb_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '배상구분코드',
  `self_chamt_untcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '자기부담금액단위코드',
  `self_chamt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '자기부담금액구분코드',
  `mncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '화폐코드',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ndsno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '배서번호',
  `vald_nds_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '1' COMMENT '유효배서여부',
  `nds_ap_str_dthms` datetime NOT NULL COMMENT '배서승인시작일시',
  `nds_ap_nd_dthms` datetime NOT NULL COMMENT '배서승인종료일시',
  `self_chamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '자기부담금액',
  `dc_xcrt` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '할인할증율',
  `woncr_cv_self_chamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '원화환산자기부담금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_cr_oj_self_chamt_00` (`plyno`,`oj_seqno`,`lb_flgcd`,`self_chamt_untcd`,`self_chamt_flgcd`,`mncd`,`ap_nddt`,`ap_strdt`,`ndsno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='계약목적물자기부담금액';
