--
-- Table structure for table `ccm_pln_mvo_dv_adm`
--

DROP TABLE IF EXISTS `ccm_pln_mvo_dv_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_pln_mvo_dv_adm` (
  `stmvo_dv_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '현장출동배당구분코드',
  `stmvo_dv_sno` decimal(5,0) NOT NULL COMMENT '현장출동배당일련번호',
  `stmvo_entp_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '현장출동업체구분코드',
  `wrk_hms_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '작업시간구분코드',
  `wrk_week_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '작업요일구분코드',
  `us_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사용여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`stmvo_dv_flgcd`,`stmvo_dv_sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='현장출동배당관리';
