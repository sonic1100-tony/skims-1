--
-- Table structure for table `ins_nds_elec_sign_relpc`
--

DROP TABLE IF EXISTS `ins_nds_elec_sign_relpc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_nds_elec_sign_relpc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호',
  `cgaf_ch_seqno` decimal(5,0) NOT NULL COMMENT '발행후변경순번',
  `elec_sign_relpc_seqno` decimal(5,0) NOT NULL COMMENT '전자서명관계자순번',
  `relpc_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관계자유형코드',
  `relpc_dscno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관계자식별번호',
  `elec_sign_bj_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전자서명대상구분코드',
  `img_srvr_rgt_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이미지서버등록여부',
  `lms_snddt` date DEFAULT NULL COMMENT 'LMS발송일자',
  `elec_sign_lms_snd_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전자서명LMS발송상태코드',
  `elec_sign_dt` date DEFAULT NULL COMMENT '전자서명일자',
  `link_kyvl` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '연결키값',
  `auth_ip_adr` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인증IP주소',
  `auth_dthms` datetime DEFAULT NULL COMMENT '인증일시',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_nds_elec_sign_relpc_00` (`plno`,`cgaf_ch_seqno`,`elec_sign_relpc_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='배서전자서명관계자';
