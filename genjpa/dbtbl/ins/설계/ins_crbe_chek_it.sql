--
-- Table structure for table `ins_crbe_chek_it`
--

DROP TABLE IF EXISTS `ins_crbe_chek_it`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_crbe_chek_it` (
  `ikd_grpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보종군코드',
  `chaf_pl_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '변경후설계상태코드',
  `crbe_chek_itcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '계약전체크항목코드',
  `sl_chn_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '판매채널구분코드',
  `chek_it_crr_seqno` decimal(5,0) NOT NULL COMMENT '체크항목이력순번',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `crbe_chek_it_vlcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약전체크항목값코드',
  `crbe_chek_it_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약전체크항목내용',
  `crbe_chek_strdt` date DEFAULT NULL COMMENT '계약전체크시작일자',
  `crbe_chek_nddt` date DEFAULT NULL COMMENT '계약전체크종료일자',
  `chek_it_rgt_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '체크항목등록직원번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`ikd_grpcd`,`chaf_pl_stcd`,`crbe_chek_itcd`,`sl_chn_flgcd`,`chek_it_crr_seqno`,`ap_nddt`,`ap_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='계약전체크항목';
