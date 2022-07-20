--
-- Table structure for table `cmp_crdm_adm`
--

DROP TABLE IF EXISTS `cmp_crdm_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmp_crdm_adm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `titl` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '제목',
  `cnrdt` date NOT NULL COMMENT '계약일자',
  `crdm_csfcd` varchar(2) COLLATE utf8mb4_bin NOT NULL COMMENT '계약서분류코드',
  `nw_flgcd` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '신규구분코드',
  `dl_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '처리상태코드',
  `org_crnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '원계약명',
  `befo_svle_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사전감시여부',
  `befo_svle_cpldt` date DEFAULT NULL COMMENT '사전감시완료일자',
  `rgtdt` date DEFAULT NULL COMMENT '등록일자',
  `cr_mng_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약주관기관코드',
  `cr_chr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약담당직원번호',
  `cr_rltcp_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약상대방명',
  `cr_strdt` date DEFAULT NULL COMMENT '계약시작일자',
  `cr_nddt` date DEFAULT NULL COMMENT '계약종료일자',
  `cr_cn` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약내용',
  `fnl_apdt` date DEFAULT NULL COMMENT '최종승인일자',
  `fnl_ap_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '최종승인직원번호',
  `trm_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기간구분코드',
  `adx_file_pth1` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '첨부파일경로1',
  `adx_file_pth2` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '첨부파일경로2',
  `adx_file_pth3` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '첨부파일경로3',
  `adx_file_pth4` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '첨부파일경로4',
  `adx_file_pth5` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '첨부파일경로5',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='계약서관리';
