--
-- Table structure for table `str_rpbl_rfamt`
--

DROP TABLE IF EXISTS `str_rpbl_rfamt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_rpbl_rfamt` (
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `cls_da_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '마감자료종류코드',
  `cr_seqno` decimal(7,0) NOT NULL COMMENT '발생순번',
  `rpbl_rfamt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '책임준비금액구분코드',
  `ikd_grpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보종군코드',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험종목코드',
  `gn_spc_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '일반특별구분코드',
  `fndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '펀드코드',
  `dl_tp_o1_csfcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '거래유형1차분류코드',
  `dl_tp_o2_csfcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '거래유형2차분류코드',
  `rn_rpbl_rfamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '원수책임준비금액',
  `efct_los_rpbl_rfamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '효력상실책임준비금액',
  `re_rpbl_rfamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '출재책임준비금액',
  `rtro_rpbl_rfamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '수재책임준비금액',
  `gn_rpbl_rfamt_sm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '일반책임준비금액합계',
  `rn_idm_pfamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '원수구상이익금액',
  `re_idm_pfamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '출재구상이익금액',
  `rtro_idm_pfamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '수재구상이익금액',
  `rn_idm_rpbl_rfamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '원수구상책임준비금액',
  `re_idm_rpbl_rfamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '출재구상책임준비금액',
  `rtro_idm_rpbl_rfamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '수재구상책임준비금액',
  `idm_rpbl_rfamt_sm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '구상책임준비금액합계',
  `rn_ibnr_rpbl_rfamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '원수IBNR책임준비금액',
  `re_ibnr_rpbl_rfamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '출재IBNR책임준비금액',
  `rtro_ibnr_rpbl_rfamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '수재IBNR책임준비금액',
  `ibnr_rpbl_rfamt_sm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT 'IBNR책임준비금액합계',
  `rn_nelp_rpbl_rfamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '원수미경과책임준비금액',
  `re_nelp_rpbl_rfamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '출재미경과책임준비금액',
  `rtro_nelp_rpbl_rfamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '수재미경과책임준비금액',
  `nelp_rpbl_rfamt_sm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '미경과책임준비금액합계',
  `bfmm_accm_rpbl_rfamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '전월누계책임준비금액',
  `cm_accm_rpbl_rfamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당월누계책임준비금액',
  `cm_pvl_rpbl_rfamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당월계상책임준비금액',
  `bfmm_accm_idm_bnamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '전월누계구상채권금액',
  `cm_accm_idm_bnamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당월누계구상채권금액',
  `cm_idm_bnd_poamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당월구상채권계상금액',
  `cm_accm_idm_pfamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '당월누계구상이익금액',
  `dl_seqno` decimal(5,0) DEFAULT NULL COMMENT '처리순번',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`st_yymm`,`cls_da_kndcd`,`cr_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='책임준비금액';
