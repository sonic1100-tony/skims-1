--
-- Table structure for table `com_inflw_img`
--

DROP TABLE IF EXISTS `com_inflw_img`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_inflw_img` (
  `ogcy_img_file_elm_id` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '원본이미지파일요소ID',
  `img_dcu_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '이미지문서유형코드',
  `img_1_key_vl` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '이미지1KEY값',
  `img_2_key_vl` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이미지2KEY값',
  `img_3_key_vl` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이미지3KEY값',
  `img_4_key_vl` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이미지4KEY값',
  `img_5_key_vl` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이미지5KEY값',
  `img_gp_id` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이미지그룹ID',
  `img_file_seqno` decimal(3,0) NOT NULL COMMENT '이미지파일순번',
  `img_finm` varchar(500) COLLATE utf8mb4_bin NOT NULL COMMENT '이미지파일명',
  `file_xts_nm` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '파일확장자명',
  `img_mask_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이미지마스킹여부',
  `wrk_img_file_elm_id` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '작업이미지파일요소ID',
  `img_rgtdt` date NOT NULL COMMENT '이미지등록일자',
  `img_mdfdt` date DEFAULT NULL COMMENT '이미지수정일자',
  `img_file_ers_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이미지파일삭제여부',
  `solt_reln_bsnm` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '솔루션연관업무명',
  `solt_reln_bsns_dl_rst_cn` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '솔루션연관업무처리결과내용',
  `img_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '이미지업무구분코드',
  `img_lclcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '이미지대분류코드',
  `img_mdccd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '이미지중분류코드',
  `img_dcu_tp_dtcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '이미지문서유형세부코드',
  `img_rgt_typcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이미지등록타입코드',
  `img_info_adm_aid` bigint(20) DEFAULT NULL COMMENT '이미지정보관리AID',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`ogcy_img_file_elm_id`),
  KEY `idx_com_inflw_img_01` (`img_bsns_flgcd`,`img_lclcd`,`img_1_key_vl`,`img_2_key_vl`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='유입이미지';
