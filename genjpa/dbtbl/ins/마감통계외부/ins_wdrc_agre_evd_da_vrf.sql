--
-- Table structure for table `ins_wdrc_agre_evd_da_vrf`
--

DROP TABLE IF EXISTS `ins_wdrc_agre_evd_da_vrf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_wdrc_agre_evd_da_vrf` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `tf_dl_metcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '이체처리방식코드',
  `rq_rqudt` date NOT NULL COMMENT '신청의뢰일자',
  `fnorg_wdrc_dl_thccd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '금융기관출금거래당사코드',
  `dat_sno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '데이터일련번호',
  `vrf_rq_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '검증요청유형코드',
  `bzmno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사업자번호',
  `pyr_no` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '납부자번호',
  `bk_or_crd_cmpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '은행/카드회사코드',
  `actno_or_crdno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '계좌번호/카드번호',
  `rqdt` date DEFAULT NULL COMMENT '신청일자',
  `evd_da_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증빙자료구분코드',
  `wdrc_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출금유형코드',
  `auto_tf_cg_kndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자동이체요금종류코드',
  `evd_da_dsc_vl` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증빙자료식별값',
  `vrf_dl_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '검증처리상태코드',
  `dlr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '처리자직원번호',
  `dldt` date DEFAULT NULL COMMENT '처리일자',
  `evd_file_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증빙파일유무',
  `file_xts_nm` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '파일확장자명',
  `file_size` decimal(15,0) DEFAULT NULL COMMENT '파일SIZE',
  `trsdt` date DEFAULT NULL COMMENT '송신일자',
  `rcvdt` date DEFAULT NULL COMMENT '수신일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_wdrc_agre_evd_da_vrf_00` (`tf_dl_metcd`,`rq_rqudt`,`fnorg_wdrc_dl_thccd`,`dat_sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='출금동의증빙자료검증';
