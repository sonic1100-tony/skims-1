--
-- Table structure for table `lse_qi_extr_cnd`
--

DROP TABLE IF EXISTS `lse_qi_extr_cnd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_qi_extr_cnd` (
  `spvsn_dt_smccd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '감리세부소분류코드',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `spvsn_flg_cd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '감리구분코드',
  `spvsn_dt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '감리세부구분코드',
  `extr_cnd_cn` varchar(2000) COLLATE utf8mb4_bin NOT NULL COMMENT '추출조건내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`spvsn_dt_smccd`,`ap_strdt`,`ap_nddt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='품질개선추출조건';
