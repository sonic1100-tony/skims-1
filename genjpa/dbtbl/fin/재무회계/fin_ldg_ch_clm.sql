--
-- Table structure for table `fin_ldg_ch_clm`
--

DROP TABLE IF EXISTS `fin_ldg_ch_clm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_ldg_ch_clm` (
  `reqno` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '요청번호',
  `rec_seqno` decimal(5,0) NOT NULL COMMENT '레코드순번',
  `atrcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '속성코드',
  `chbvl` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경전값',
  `chavl` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경후값',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`reqno`,`rec_seqno`,`atrcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='원장변경컬럼';
