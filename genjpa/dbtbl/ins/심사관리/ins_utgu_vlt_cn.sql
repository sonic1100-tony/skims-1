--
-- Table structure for table `ins_utgu_vlt_cn`
--

DROP TABLE IF EXISTS `ins_utgu_vlt_cn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_utgu_vlt_cn` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `cn_seqno` decimal(5,0) NOT NULL COMMENT '내용순번',
  `udrtk_vltcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '인수위배코드',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ndsno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '배서번호',
  `vald_nds_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '1' COMMENT '유효배서여부',
  `nds_ap_str_dthms` datetime NOT NULL COMMENT '배서승인시작일시',
  `nds_ap_nd_dthms` datetime NOT NULL COMMENT '배서승인종료일시',
  `vlt_bj_flgcd` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '위배대상구분코드',
  `vlt_bjno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '위배대상번호',
  `vlt_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '위배내용',
  `vlt_ipan_cn` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '위배함축내용',
  `udrtk_lmit_phbt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인수제한금지구분코드',
  `tot_acmrk_udrtk_lmamt` decimal(15,0) DEFAULT NULL COMMENT '전체누적위험인수한도금액',
  `udrtk_vlt_dtcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인수위배상세코드',
  `unf_acmrk_udrtk_lmamt` decimal(15,0) DEFAULT NULL COMMENT '단일누적위험인수한도금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_utgu_vlt_cn_00` (`plyno`,`cn_seqno`,`udrtk_vltcd`,`ap_nddt`,`ap_strdt`,`ndsno`)
) ENGINE=InnoDB AUTO_INCREMENT=189 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='인수지침위배내용';
