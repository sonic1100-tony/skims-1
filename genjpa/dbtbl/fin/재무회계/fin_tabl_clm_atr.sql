--
-- Table structure for table `fin_tabl_clm_atr`
--

DROP TABLE IF EXISTS `fin_tabl_clm_atr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_tabl_clm_atr` (
  `cnn_scr_id` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '관련화면ID',
  `eng_tabnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '영문테이블명',
  `eng_clmnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '영문컬럼명',
  `clm_sql_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '컬럼SQL내용',
  `clm_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '컬럼명',
  `clm_typ_cn` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '컬럼타입내용',
  `grid_ordr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '그리드정렬구분코드',
  `grid_clm_lngth` decimal(3,0) DEFAULT NULL COMMENT '그리드컬럼길이',
  `hngl_tabnm` varchar(150) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '한글테이블명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`cnn_scr_id`,`eng_tabnm`,`eng_clmnm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='테이블컬럼속성';
