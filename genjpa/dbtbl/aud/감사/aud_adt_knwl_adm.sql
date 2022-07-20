--
-- Table structure for table `aud_adt_knwl_adm`
--

DROP TABLE IF EXISTS `aud_adt_knwl_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aud_adt_knwl_adm` (
  `adt_knwl_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '감사지식업무구분코드',
  `adt_knwl_mdccd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '감사지식중분류코드',
  `seqno` decimal(5,0) NOT NULL COMMENT '순번',
  `itnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '항목명',
  `dtit_chek_nm` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '세부항목체크명',
  `rgtdt` date DEFAULT NULL COMMENT '등록일자',
  `rgt_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '등록직원번호',
  `clodt` date DEFAULT NULL COMMENT '폐쇄일자',
  `wrt_dep_chek_vl` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '작성부서체크값',
  `adx_1_file_pth` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '첨부1파일경로',
  `adx_2_file_pth` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '첨부2파일경로',
  `adx_3_file_pth` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '첨부3파일경로',
  `adx_4_file_pth` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '첨부4파일경로',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`adt_knwl_bsns_flgcd`,`adt_knwl_mdccd`,`seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='감사지식관리';
