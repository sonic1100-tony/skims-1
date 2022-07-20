--
-- Table structure for table `ins_eng_ins_ply_is`
--

DROP TABLE IF EXISTS `ins_eng_ins_ply_is`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_eng_ins_ply_is` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `eng_ply_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '영문증권구분코드',
  `prg_adm_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '문구관리종류코드',
  `prg_seq_no` decimal(5,0) NOT NULL COMMENT '문구회차번호',
  `it_lvlcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '항목레벨코드',
  `pag_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '페이지구분코드',
  `prg_titl` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '문구제목',
  `prg_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '문구내용',
  `pr_flgnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '질권구분명',
  `prps_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '질권자성명',
  `mncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '화폐코드',
  `peamt` decimal(17,2) NOT NULL COMMENT '질권금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_eng_ins_ply_is_00` (`plyno`,`eng_ply_flgcd`,`prg_adm_kndcd`,`prg_seq_no`,`it_lvlcd`,`pag_flgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='영문보험증권발급';
