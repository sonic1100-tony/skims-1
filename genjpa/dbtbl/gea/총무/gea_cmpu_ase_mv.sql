--
-- Table structure for table `gea_cmpu_ase_mv`
--

DROP TABLE IF EXISTS `gea_cmpu_ase_mv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_cmpu_ase_mv` (
  `cmpu_admno` varchar(23) COLLATE utf8mb4_bin NOT NULL COMMENT '전산관리번호',
  `ase_ch_atrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '자산변경속성코드',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ch_rs` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경사유',
  `org_ntty_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기관실체구분코드',
  `adm_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관리기관코드',
  `adm_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관리직원번호',
  `tot_adr` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전체주소',
  `chaf_tlno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경후전화번호',
  `chbf_tot_adr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경전전체주소',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`cmpu_admno`,`ase_ch_atrcd`,`ap_nddt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='전산자산이동';
