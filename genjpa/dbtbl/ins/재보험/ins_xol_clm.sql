--
-- Table structure for table `ins_xol_clm`
--

DROP TABLE IF EXISTS `ins_xol_clm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_xol_clm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `clmdt` date NOT NULL COMMENT '사고일자',
  `clm_plc` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고장소',
  `clm_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고내용',
  `xol_prg_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'XOL진행상태코드',
  `nrdnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자명',
  `nrdps_dscno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자식별번호',
  `carno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량번호',
  `eng_carno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영문차량번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_xol_clm_00` (`rcp_yymm`,`rcp_nv_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='XOL사고';
