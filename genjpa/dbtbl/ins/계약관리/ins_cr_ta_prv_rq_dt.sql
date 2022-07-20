--
-- Table structure for table `ins_cr_ta_prv_rq_dt`
--

DROP TABLE IF EXISTS `ins_cr_ta_prv_rq_dt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cr_ta_prv_rq_dt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rqno` varchar(15) COLLATE utf8mb4_bin NOT NULL COMMENT '신청번호',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `gdnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '상품명',
  `crt_ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '계약자고객번호',
  `tabf_dh_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '이관전취급직원번호',
  `tabf_usrno` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이관전사용인번호',
  `taaf_dh_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '이관후취급직원번호',
  `taaf_usrno` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이관후사용인번호',
  `exc_rstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '실행결과코드',
  `er_cn` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '오류내용',
  `ers_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '삭제여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_cr_ta_prv_rq_dt_00` (`rqno`,`plyno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='계약이관결재신청상세';
