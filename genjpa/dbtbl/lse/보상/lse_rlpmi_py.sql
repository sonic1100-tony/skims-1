--
-- Table structure for table `lse_rlpmi_py`
--

DROP TABLE IF EXISTS `lse_rlpmi_py`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_rlpmi_py` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `py_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '지급년월',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `dm_seqno` decimal(5,0) NOT NULL COMMENT '청구순번',
  `seqno` decimal(5,0) NOT NULL COMMENT '순번',
  `gdnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품명',
  `crrnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약자명',
  `crt_rsno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약자주민번호',
  `crt_ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약자고객번호',
  `nrdnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자명',
  `nrdps_rsno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자주민번호',
  `nrdps_ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자고객번호',
  `pfbnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수익자명',
  `pfb_rsno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수익자주민번호',
  `pfb_ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수익자고객번호',
  `clmdt` date DEFAULT NULL COMMENT '사고일자',
  `prvdt` date DEFAULT NULL COMMENT '결재일자',
  `pyamt` decimal(15,0) DEFAULT NULL COMMENT '지급액',
  `ac_pydt` date DEFAULT NULL COMMENT '경리지급일자',
  `py_bjnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급대상명',
  `py_bj_rs_bzmno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급대상주민사업자번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_rlpmi_py_00` (`py_yymm`,`rcp_yymm`,`rcp_nv_seqno`,`plyno`,`dm_seqno`,`seqno`),
  KEY `idx_lse_rlpmi_py_10` (`pfb_rsno`,`ac_pydt`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='실손의료비지급';
