--
-- Table structure for table `cmp_crp_seal_us_adm`
--

DROP TABLE IF EXISTS `cmp_crp_seal_us_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmp_crp_seal_us_adm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `seal_flgcd` varchar(2) COLLATE utf8mb4_bin NOT NULL COMMENT '날인구분코드',
  `titl` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '제목',
  `rqdt` date NOT NULL COMMENT '신청일자',
  `dl_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '처리상태코드',
  `cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '내용',
  `dstb_plac` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배부처',
  `rqor_cd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신청기관코드',
  `rq_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신청직원번호',
  `apdt` date DEFAULT NULL COMMENT '승인일자',
  `ap_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '승인기관코드',
  `ap_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '승인직원번호',
  `fnl_apdt` date DEFAULT NULL COMMENT '최종승인일자',
  `fnl_ap_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '최종승인기관코드',
  `fnl_ap_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '최종승인직원번호',
  `dlg_lead_ss_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '위임장발행여부',
  `nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '성명',
  `rsno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주민등록번호',
  `adr_dtadr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주소상세주소',
  `dlg_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '위임내용',
  `ad_rq_dcu_slc_yn1` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '추가요청서류선택여부1',
  `ad_rqct1` decimal(2,0) DEFAULT NULL COMMENT '추가요청건수1',
  `ad_rq_dcu_slc_yn2` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '추가요청서류선택여부2',
  `ad_rqct2` decimal(2,0) DEFAULT NULL COMMENT '추가요청건수2',
  `ad_rq_dcu_slc_yn3` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '추가요청서류선택여부3',
  `ad_rqct3` decimal(2,0) DEFAULT NULL COMMENT '추가요청건수3',
  `adx_file_pth1` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '첨부파일경로1',
  `adx_file_pth2` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '첨부파일경로2',
  `adx_file_pth3` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '첨부파일경로3',
  `adx_file_pth4` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '첨부파일경로4',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `idx_cmp_crp_seal_us_adm_01` (`seal_flgcd`,`titl`,`rqdt`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='법인인감사용관리';
