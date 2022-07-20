--
-- Table structure for table `ins_nds_elec_sign_mstr`
--

DROP TABLE IF EXISTS `ins_nds_elec_sign_mstr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_nds_elec_sign_mstr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호',
  `cgaf_ch_seqno` decimal(5,0) NOT NULL COMMENT '발행후변경순번',
  `plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증권번호',
  `nds_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배서유형코드',
  `elec_sign_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전자서명구분코드',
  `img_srvr_rgt_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이미지서버등록여부',
  `cnn_scr_id` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관련화면ID',
  `chbf_atrvl` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경전속성값',
  `chaf_atrvl` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경후속성값',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_nds_elec_sign_mstr_00` (`plno`,`cgaf_ch_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='배서전자서명마스터';
