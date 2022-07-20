--
-- Table structure for table `lse_bfntc_prg`
--

DROP TABLE IF EXISTS `lse_bfntc_prg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_bfntc_prg` (
  `xpdm_cvr_lclcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '예상청구담보대분류코드',
  `xpdm_cvr_smccd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '예상청구담보소분류코드',
  `bfntc_prg_cn` varchar(4000) COLLATE utf8mb4_bin NOT NULL COMMENT '사전안내문구내용',
  `note` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`xpdm_cvr_lclcd`,`xpdm_cvr_smccd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사전안내문구';
