--
-- Table structure for table `cmp_usly_svle_chek`
--

DROP TABLE IF EXISTS `cmp_usly_svle_chek`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmp_usly_svle_chek` (
  `vl_chk_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '평가점검업무구분코드',
  `o1_vl_chk_csfvl` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '1차평가점검분류값',
  `chk_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '점검년월',
  `usly_svle_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '일상감시업무구분코드',
  `chk_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '점검기관코드',
  `chk_bjyn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '점검대상여부',
  `o1_vl_grd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1차평가등급',
  `o2_vl_grd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2차평가등급',
  `o1_vlpoc` decimal(5,2) DEFAULT NULL COMMENT '1차평가점수',
  `o2_vlpoc` decimal(5,2) DEFAULT NULL COMMENT '2차평가점수',
  `chk_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '점검직원번호',
  `o1_vl_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1차평가직원번호',
  `o2_vl_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2차평가직원번호',
  `adx_1_file_pth` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '첨부1파일경로',
  `adx_2_file_pth` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '첨부2파일경로',
  `adx_3_file_pth` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '첨부3파일경로',
  `chk_cn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '점검내용',
  `mpv_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개선사항',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`vl_chk_bsns_flgcd`,`o1_vl_chk_csfvl`,`chk_yymm`,`usly_svle_bsns_flgcd`,`chk_orgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='일상감시개인정보체크';
