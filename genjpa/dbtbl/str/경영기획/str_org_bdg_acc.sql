--
-- Table structure for table `str_org_bdg_acc`
--

DROP TABLE IF EXISTS `str_org_bdg_acc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_org_bdg_acc` (
  `ntacc_cd` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '계정과목코드',
  `bdg_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '예산기관코드',
  `ap_nddt` date NOT NULL DEFAULT '9999-12-31' COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `bdg_xc_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '예산집행구분코드',
  `ctl_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '통제구분코드',
  `requ_bdgfr_acc_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의뢰예산편성계정여부',
  `bdg_frmtn_acc_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '1' COMMENT '예산편성계정여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`ntacc_cd`,`bdg_orgcd`,`ap_nddt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='기관예산계정';
