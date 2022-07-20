--
-- Table structure for table `igd_nc_mtt_rpl`
--

DROP TABLE IF EXISTS `igd_nc_mtt_rpl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `igd_nc_mtt_rpl` (
  `nc_mtt_qust_typcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '알릴사항질문타입코드',
  `nc_mtt_itno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '알릴사항항목번호',
  `nc_mtt_it_dt_prmvl` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '알릴사항항목상세허용값',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `nc_mtt_it_dt_prmvl_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '알릴사항항목상세허용값명',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`nc_mtt_qust_typcd`,`nc_mtt_itno`,`nc_mtt_it_dt_prmvl`,`ap_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='알릴사항답변';
