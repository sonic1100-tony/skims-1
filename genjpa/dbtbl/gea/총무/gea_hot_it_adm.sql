--
-- Table structure for table `gea_hot_it_adm`
--

DROP TABLE IF EXISTS `gea_hot_it_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_hot_it_adm` (
  `hot_rgtno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '임대차등록번호',
  `hot_adm_itcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '임대차관리항목코드',
  `les_rnt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '임대임차구분코드',
  `dlplc_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '거래처구분코드',
  `hot_essn_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '임대차필수유무',
  `rnt_spr_ctmno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '임차공급자고객번호',
  `rnt_sprr_ctmno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '임차공급받는자고객번호',
  `rntrt_py_cm_xpamt` decimal(15,0) DEFAULT '0' COMMENT '임차료지급당월예상금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`hot_rgtno`,`hot_adm_itcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='임대차항목관리';
