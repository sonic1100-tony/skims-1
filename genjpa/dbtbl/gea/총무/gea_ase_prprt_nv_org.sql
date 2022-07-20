--
-- Table structure for table `gea_ase_prprt_nv_org`
--

DROP TABLE IF EXISTS `gea_ase_prprt_nv_org`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_ase_prprt_nv_org` (
  `prprt_nv_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '재물조사년월',
  `org_ntty_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '기관실체구분코드',
  `crnt_adm_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '현재관리기관코드',
  `org_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '기관상태코드',
  `prprt_nv_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '재물조사여부',
  `nvdt` date DEFAULT NULL COMMENT '조사일자',
  `nvr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조사자직원번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`prprt_nv_yymm`,`org_ntty_flgcd`,`crnt_adm_orgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자산재물조사기관';
