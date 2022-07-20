--
-- Table structure for table `lse_quf_exm`
--

DROP TABLE IF EXISTS `lse_quf_exm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_quf_exm` (
  `exm_ope_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '시험시행년월',
  `exm_seqno` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '시험순번',
  `exm_titl` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '시험제목',
  `exm_int_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '시험소개내용',
  `pout_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특이사항',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`exm_ope_yymm`,`exm_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자격시험';
