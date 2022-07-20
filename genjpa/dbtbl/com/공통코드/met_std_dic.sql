--
-- Table structure for table `met_std_dic`
--

DROP TABLE IF EXISTS `met_std_dic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `met_std_dic` (
  `std_area_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '표준AREAID',
  `dic_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '메타사전ID',
  `aval_end_dt` varchar(14) COLLATE utf8mb4_bin NOT NULL COMMENT '유효종료일시',
  `aval_st_dt` varchar(14) COLLATE utf8mb4_bin NOT NULL COMMENT '유효시작일시',
  `dic_log_nm` varchar(200) COLLATE utf8mb4_bin NOT NULL COMMENT '메타사전논리명',
  `dic_phy_nm` varchar(200) COLLATE utf8mb4_bin NOT NULL COMMENT '메타사전물리명',
  `dic_phy_fll_nm` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '메타사전물리전체명',
  `dic_desc` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '메타사전정의',
  `ent_clss_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '실체분류어여부',
  `attr_clss_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '속성분류어여부',
  `standard_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '표준여부',
  `forbid_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '금칙어여부',
  `dom_nm_use_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '도메인명사용여부',
  `dic_gbn_cd` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '메타사전구분코드',
  `term_gbn_cd` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '용어구분코드',
  `dom_use_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '도메인사용여부',
  `dom_id` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '도메인ID',
  `data_type` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '데이터타입',
  `data_len` decimal(15,0) DEFAULT NULL COMMENT '길이',
  `data_scale` decimal(3,0) DEFAULT NULL COMMENT '소수점자리수',
  `use_end_dt` varchar(14) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '용도종결일자',
  `use_end_rsn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '만료사유',
  `owner_id` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'OWNERID',
  `src_gbn_cd` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출처구분코드',
  `dic_chn_nm` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '한자명',
  `old_dic_id` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '만료메타사전ID',
  `sorted_term_comp_ids` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '정렬코드명구성아이디내용',
  `security_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '정보보호여부',
  `security_level` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '정보보호등급',
  `scra` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '스크램블',
  `enc_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '암호화여부',
  `encryption_method` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '암호화방식',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`std_area_id`,`dic_id`,`aval_end_dt`,`aval_st_dt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='단어용어사전';
