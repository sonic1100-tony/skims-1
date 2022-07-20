--
-- Table structure for table `gea_rstm_img`
--

DROP TABLE IF EXISTS `gea_rstm_img`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_rstm_img` (
  `ldg_rgtno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '원장등록번호',
  `rstm_cop_ntty_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '부동산구성실체구분코드',
  `cop_seqno` decimal(5,0) NOT NULL COMMENT '구성순번',
  `file_key` decimal(20,0) NOT NULL COMMENT '파일KEY',
  `bzofc_img_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사무실이미지구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`ldg_rgtno`,`rstm_cop_ntty_flgcd`,`cop_seqno`,`file_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='부동산이미지';
