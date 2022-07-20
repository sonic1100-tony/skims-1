--
-- Table structure for table `com_batch_crt_smfl`
--

DROP TABLE IF EXISTS `com_batch_crt_smfl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_batch_crt_smfl` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `batch_admno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '배치관리번호',
  `file_seqno` decimal(5,0) NOT NULL COMMENT '파일순번',
  `smfl_tp_nm` varchar(200) COLLATE utf8mb4_bin NOT NULL COMMENT 'SAM파일형식명',
  `smfl_srvr_ip_adr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'SAM파일서버IP주소',
  `smfl_crt_dir_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'SAM파일생성디렉토리명',
  `smfl_usecd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'SAM파일용도코드',
  `smfl_psinf_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'SAM파일개인정보유무',
  `smfl_ecpn_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'SAM파일암호화여부',
  `smfl_mask_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'SAM파일마스킹여부',
  `smfl_recct` decimal(5,0) DEFAULT NULL COMMENT 'SAM파일레코드수',
  `smfl_ers_cyccd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'SAM파일삭제주기코드',
  `smfl_crt_mtdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'SAM파일생성방법코드',
  `outs_rcvad_nm` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '외부수신처명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_com_batch_crt_smfl_00` (`batch_admno`,`file_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='배치생성SAM파일';
