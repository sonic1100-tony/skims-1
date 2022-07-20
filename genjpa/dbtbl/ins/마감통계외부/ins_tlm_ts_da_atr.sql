--
-- Table structure for table `ins_tlm_ts_da_atr`
--

DROP TABLE IF EXISTS `ins_tlm_ts_da_atr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_tlm_ts_da_atr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `eng_tabnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '영문테이블명',
  `atr_seqno` decimal(5,0) NOT NULL COMMENT '속성순번',
  `atr_ennm` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '속성영문명',
  `atr_kornm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '속성한글명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_tlm_ts_da_atr_00` (`eng_tabnm`,`atr_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='전문전송자료속성';
