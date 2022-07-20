--
-- Table structure for table `lse_xp_cidps`
--

DROP TABLE IF EXISTS `lse_xp_cidps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_xp_cidps` (
  `idm_xp_admno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '구상예상관리번호',
  `xp_cidps_seqno` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '예상피구상자순번',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `cidps_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '피구상자유형코드',
  `cidps_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피구상자명',
  `cidps_dscno_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피구상자식별번호구분코드',
  `cidps_dscno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '피구상자식별번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`idm_xp_admno`,`xp_cidps_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='예상피구상자';
