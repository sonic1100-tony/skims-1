--
-- Table structure for table `ins_spc_adm_nrdps`
--

DROP TABLE IF EXISTS `ins_spc_adm_nrdps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_spc_adm_nrdps` (
  `rsno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '주민번호',
  `crr_seqno` decimal(5,0) NOT NULL COMMENT '이력순번',
  `crdt` date NOT NULL COMMENT '발생일자',
  `ctmnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '고객명',
  `grd_ap_nddt` date NOT NULL COMMENT '등급적용종료일자',
  `grd_ap_strdt` date NOT NULL COMMENT '등급적용시작일자',
  `nrdps_rk_grdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '피보험자위험등급코드',
  `nrdps_rk_bsns_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '피보험자위험업무상태코드',
  `bsns_file_key` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무파일KEY',
  `ers_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '삭제여부',
  `note` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`rsno`,`crr_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='특별관리피보험자';
