--
-- Table structure for table `fin_usr_scr_atr`
--

DROP TABLE IF EXISTS `fin_usr_scr_atr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_usr_scr_atr` (
  `cnn_scr_id` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '관련화면ID',
  `lgin_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '로그인사용자ID',
  `eng_tabnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '영문테이블명',
  `eng_clmnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '영문컬럼명',
  `scr_idc_ordr` decimal(5,0) NOT NULL COMMENT '화면표시순서',
  `clm_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '컬럼명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`cnn_scr_id`,`lgin_usr_id`,`eng_tabnm`,`eng_clmnm`,`scr_idc_ordr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사용자화면속성';
