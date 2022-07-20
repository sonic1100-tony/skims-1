--
-- Table structure for table `ins_nrdps_prm_pym_pr`
--

DROP TABLE IF EXISTS `ins_nrdps_prm_pym_pr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_nrdps_prm_pym_pr` (
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `pym_seq` decimal(5,0) NOT NULL COMMENT '납입회차',
  `nrdps_relpc_seqno` decimal(10,0) NOT NULL COMMENT '피보험자관계자순번',
  `mncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '화폐코드',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ndsno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '배서번호',
  `isrdt` date DEFAULT NULL COMMENT '가입일자',
  `nds_ap_nd_dthms` datetime DEFAULT NULL COMMENT '배서승인종료일시',
  `nds_ap_str_dthms` datetime DEFAULT NULL COMMENT '배서승인시작일시',
  `ap_prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '적용보험료',
  `woncr_cv_ap_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '원화환산적용보험료',
  `pym_prdt` date DEFAULT NULL COMMENT '납입예정일자',
  `pyp_rt` decimal(12,6) DEFAULT NULL COMMENT '분납비율',
  `prm_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험료구분코드',
  `dpdt` date DEFAULT NULL COMMENT '입금일자',
  `dp_prm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '입금보험료',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`plyno`,`pym_seq`,`nrdps_relpc_seqno`,`mncd`,`ap_nddt`,`ap_strdt`,`ndsno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='피보험자보험료납입예정';
