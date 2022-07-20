--
-- Table structure for table `ins_cls_cfc_adm`
--

DROP TABLE IF EXISTS `ins_cls_cfc_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cls_cfc_adm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `cls_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '마감년월',
  `onl_gd_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '온라인상품여부',
  `bz_avtb_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사업실적표분류코드',
  `ikd_grpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보종군코드',
  `bz_avtb_larg_ikdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사업실적표대보종코드',
  `bz_avtb_ikd_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사업실적표보종담보코드',
  `gn_co_appr_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '일반공동인정구분코드',
  `gnb_100_prct_cfc` decimal(20,5) NOT NULL COMMENT '일반물건100퍼센트계수',
  `coobj_100_prct_cfc` decimal(20,5) NOT NULL COMMENT '공동물건100퍼센트계수',
  `coobj_30_prct_cfc` decimal(20,5) NOT NULL COMMENT '공동물건30퍼센트계수',
  `coobj_otcm_70pt_cfc` decimal(20,5) NOT NULL COMMENT '공동물건타사70퍼센트계수',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_cls_cfc_adm_00` (`cls_yymm`,`onl_gd_yn`,`bz_avtb_csfcd`,`ikd_grpcd`,`bz_avtb_larg_ikdcd`,`bz_avtb_ikd_cvrcd`,`gn_co_appr_flgcd`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='마감계수관리';
