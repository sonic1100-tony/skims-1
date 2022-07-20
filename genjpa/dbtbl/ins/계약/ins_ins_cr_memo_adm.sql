--
-- Table structure for table `ins_ins_cr_memo_adm`
--

DROP TABLE IF EXISTS `ins_ins_cr_memo_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_ins_cr_memo_adm` (
  `plyno_or_plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호/설계번호',
  `cr_seqno` decimal(7,0) NOT NULL COMMENT '발생순번',
  `plyno_or_plno_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증권번호/설계번호구분코드',
  `vald_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '유효여부',
  `ikd_grpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보종군코드',
  `ctm_dscno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객식별번호',
  `cr_chncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약채널코드',
  `memo` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '메모',
  `memo_inp_ptncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '메모입력경로코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`plyno_or_plno`,`cr_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='보험계약메모관리';
