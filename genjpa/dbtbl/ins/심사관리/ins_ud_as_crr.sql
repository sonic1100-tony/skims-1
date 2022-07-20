--
-- Table structure for table `ins_ud_as_crr`
--

DROP TABLE IF EXISTS `ins_ud_as_crr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_ud_as_crr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `udno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '심사번호',
  `ndv_ud_seqno` decimal(5,0) NOT NULL COMMENT '개별심사순번',
  `as_crr_seqno` decimal(5,0) NOT NULL COMMENT '배정이력순번',
  `as_wrk_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '배정작업구분코드',
  `as_dgre_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '배정차수구분코드',
  `befo_ud_chr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이전심사담당직원번호',
  `befo_fnl_ud_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이전최종심사직원번호',
  `befo_ud_cplt_dthms` datetime DEFAULT NULL COMMENT '이전심사완료일시',
  `re_ud_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '재심사여부',
  `ud_chr_ta_ct` decimal(3,0) NOT NULL DEFAULT '0' COMMENT '심사담당이관횟수',
  `fnl_udstf_ta_ct` decimal(3,0) NOT NULL DEFAULT '0' COMMENT '최종심사직원이관횟수',
  `ud_dl_prio_rancd` varchar(10) COLLATE utf8mb4_bin DEFAULT '0' COMMENT '심사처리우선순위코드',
  `bct_ud_nd_hms` decimal(4,0) DEFAULT NULL COMMENT '건당심사소요시간',
  `ud_as_dthms` datetime NOT NULL COMMENT '심사배정일시',
  `ud_as_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심사배정직원번호',
  `ud_as_chr_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심사배정담당유형코드',
  `ud_as_bsns_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심사배정업무유형코드',
  `ud_as_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심사배정유형코드',
  `ud_as_bz_atrcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심사배정영업속성코드',
  `ud_as_dgre_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심사배정차수구분코드',
  `cprt_entp_ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '협력업체고객번호',
  `cprt_entp_seqno` decimal(3,0) DEFAULT NULL COMMENT '협력업체순번',
  `wrk_crr_seqno` decimal(5,0) NOT NULL COMMENT '작업이력순번',
  `as_sb_cr_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배정대기발생사유코드',
  `as_sb_dl_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배정대기처리방법코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_ud_as_crr_00` (`udno`,`ndv_ud_seqno`,`as_crr_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='심사배정이력';
