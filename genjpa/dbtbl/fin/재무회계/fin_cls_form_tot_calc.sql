--
-- Table structure for table `fin_cls_form_tot_calc`
--

DROP TABLE IF EXISTS `fin_cls_form_tot_calc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_cls_form_tot_calc` (
  `cls_form_frmcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '마감장표양식코드',
  `form_seq` decimal(3,0) NOT NULL COMMENT '양식회차',
  `cls_form_itcd` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '마감장표항목코드',
  `tot_dt_itcd` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '집계상세항목코드',
  `ikd_grpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보종군코드',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험종목코드',
  `tot_it_ntty_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '집계항목실체구분코드',
  `vald_nd_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL DEFAULT '999912' COMMENT '유효종료년월',
  `vald_str_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '유효시작년월',
  `ads_sign` decimal(1,0) NOT NULL COMMENT '가감부호',
  `pter_tblam_sb_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전기말잔액차감여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`cls_form_frmcd`,`form_seq`,`cls_form_itcd`,`tot_dt_itcd`,`ikd_grpcd`,`ins_imcd`,`tot_it_ntty_flgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='마감장표집계연산';
