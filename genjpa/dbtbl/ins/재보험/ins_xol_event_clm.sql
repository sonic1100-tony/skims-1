--
-- Table structure for table `ins_xol_event_clm`
--

DROP TABLE IF EXISTS `ins_xol_event_clm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_xol_event_clm` (
  `xol_event_clmno` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT 'XOL이벤트사고번호',
  `mncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '화폐코드',
  `xol_event_clmnm` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT 'XOL이벤트사고명',
  `clm_strdt` date DEFAULT NULL COMMENT '사고시작일자',
  `clm_nddt` date DEFAULT NULL COMMENT '사고종료일자',
  `xol_event_clm_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'XOL이벤트사고유형코드',
  `xol_event_clm_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'XOL이벤트사고내용',
  `rgtdt` date DEFAULT NULL COMMENT '등록일자',
  `xol_crano` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'XOL계약번호',
  `xol_event_cr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'XOL이벤트발생구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`xol_event_clmno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='XOL이벤트사고';
