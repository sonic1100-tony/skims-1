--
-- Table structure for table `ins_pl_udrtk_bltgu_cn`
--

DROP TABLE IF EXISTS `ins_pl_udrtk_bltgu_cn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_pl_udrtk_bltgu_cn` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호',
  `cgaf_ch_seqno` decimal(5,0) NOT NULL DEFAULT '0' COMMENT '발행후변경순번',
  `cn_seqno` decimal(5,0) NOT NULL COMMENT '내용순번',
  `udrtk_vltcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '인수위배코드',
  `vlt_bj_flgcd` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '위배대상구분코드',
  `vlt_bjno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '위배대상번호',
  `vlt_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '위배내용',
  `vlt_ipan_cn` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '위배함축내용',
  `udrtk_lmit_phbt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인수제한금지구분코드',
  `gu_vlt_cnf_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '지침위배확인여부',
  `gr_ud_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '단체심사여부',
  `ppr_cn_seqno` decimal(5,0) DEFAULT NULL COMMENT '상위내용순번',
  `ppr_udrtk_vltcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상위인수위배코드',
  `tot_acmrk_udrtk_lmamt` decimal(15,0) DEFAULT NULL COMMENT '전체누적위험인수한도금액',
  `udrtk_vlt_dtcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인수위배상세코드',
  `unf_acmrk_udrtk_lmamt` decimal(15,0) DEFAULT NULL COMMENT '단일누적위험인수한도금액',
  `vlt_bj_cvr_spc` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '위배대상담보내역',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_pl_udrtk_bltgu_cn_00` (`plno`,`cgaf_ch_seqno`,`cn_seqno`,`udrtk_vltcd`)
) ENGINE=InnoDB AUTO_INCREMENT=5497 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='설계인수지침위배내용';
