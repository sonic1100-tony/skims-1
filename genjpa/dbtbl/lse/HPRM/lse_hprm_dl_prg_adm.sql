--
-- Table structure for table `lse_hprm_dl_prg_adm`
--

DROP TABLE IF EXISTS `lse_hprm_dl_prg_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_hprm_dl_prg_adm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `hprm_clm_nv_seqno` decimal(3,0) NOT NULL COMMENT 'HPRM사고조사순번',
  `dl_spc_seqno` decimal(3,0) NOT NULL COMMENT '처리내역순번',
  `hprm_nv_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'HPRM조사구분코드',
  `hprm_prg_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'HPRM진행상태코드',
  `prg_spc` varchar(1000) COLLATE utf8mb4_bin NOT NULL COMMENT '진행내역',
  `dldt` date NOT NULL COMMENT '처리일자',
  `dmd_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '요청자구분코드',
  `dmd_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '요청자직원번호',
  `dmd_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '요청자기관코드',
  `rnd_days` decimal(5,0) DEFAULT NULL COMMENT '경과일수',
  `invps_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '면담자명',
  `dlay_maicd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지연주체코드',
  `dlay_days` decimal(2,0) DEFAULT NULL COMMENT '지연일수',
  `requ_org_seqno` decimal(3,0) DEFAULT NULL COMMENT '의뢰기관순번',
  `dm_seqno` decimal(5,0) DEFAULT NULL COMMENT '청구순번',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_hprm_dl_prg_adm_00` (`rcp_yymm`,`rcp_nv_seqno`,`hprm_clm_nv_seqno`,`dl_spc_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='HPRM처리진행관리';
