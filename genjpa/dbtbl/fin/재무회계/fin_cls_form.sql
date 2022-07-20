--
-- Table structure for table `fin_cls_form`
--

DROP TABLE IF EXISTS `fin_cls_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_cls_form` (
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `cls_form_frmcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '마감장표양식코드',
  `form_seq` decimal(3,0) NOT NULL COMMENT '양식회차',
  `cls_form_itcd` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '마감장표항목코드',
  `act_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '회계기관코드',
  `gn_spc_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '일반특별구분코드',
  `ikd_grpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보종군코드',
  `fndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '펀드코드',
  `lgin_id` decimal(15,0) NOT NULL COMMENT '로그인아이디',
  `dat_sourc_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL DEFAULT '3' COMMENT '데이터소스구분코드',
  `ptrm_cmamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '전기당월금액',
  `cut_cmamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당기당월금액',
  `ptrm_acamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '전기누계금액',
  `cut_acamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당기누계금액',
  `bfyy_end_amt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '전년말금액',
  `bfmm_amt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '전월금액',
  `cmamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당월금액',
  `pfamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '수익금액',
  `cs_amt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '비용금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`st_yymm`,`cls_form_frmcd`,`form_seq`,`cls_form_itcd`,`act_orgcd`,`gn_spc_flgcd`,`ikd_grpcd`,`fndcd`,`lgin_id`,`dat_sourc_flgcd`),
  KEY `idx_fin_cls_form_10` (`lgin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='마감장표';
