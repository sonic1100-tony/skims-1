--
-- Table structure for table `ins_eng_inply_prg_adm`
--

DROP TABLE IF EXISTS `ins_eng_inply_prg_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_eng_inply_prg_adm` (
  `eng_ply_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '영문증권분류코드',
  `eng_ply_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '영문증권구분코드',
  `prg_adm_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '문구관리종류코드',
  `scr_idc_ordr` decimal(5,0) NOT NULL COMMENT '화면표시순서',
  `prg_admcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '문구관리코드',
  `prg_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '문구내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`eng_ply_csfcd`,`eng_ply_flgcd`,`prg_adm_kndcd`,`scr_idc_ordr`,`prg_admcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='영문보험증권문구관리';
