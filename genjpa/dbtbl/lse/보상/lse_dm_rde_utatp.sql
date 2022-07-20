--
-- Table structure for table `lse_dm_rde_utatp`
--

DROP TABLE IF EXISTS `lse_dm_rde_utatp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_dm_rde_utatp` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `dm_seqno` decimal(5,0) NOT NULL COMMENT '청구순번',
  `utatp_dscno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '인수유의자식별번호',
  `inssw_relcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험사기관계코드',
  `prv_rgt_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '기등록여부',
  `utatp_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '인수유의자유형코드',
  `utatp_tp_dtcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '인수유의자유형세부코드',
  `rgt_rs` varchar(500) COLLATE utf8mb4_bin NOT NULL COMMENT '등록사유',
  `rgtno` varchar(12) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '등록번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_dm_rde_utatp_00` (`rcp_yymm`,`rcp_nv_seqno`,`dm_seqno`,`utatp_dscno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='손해절감인수유의자';
