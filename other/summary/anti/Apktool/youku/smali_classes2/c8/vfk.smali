.class public interface abstract Lc8/vfk;
.super Ljava/lang/Object;
.source "ICard.java"


# static fields
.field public static final ACTION_CACHE_CHANGED:Ljava/lang/String; = "cache_changed"

.field public static final CARD_TYPE_AD:I = 0xc

.field public static final CARD_TYPE_BANNER:I = 0x1

.field public static final CARD_TYPE_BIGWORDS:I = 0x14

.field public static final CARD_TYPE_BIGWORDS_PART_FULL:I = 0x7d0

.field public static final CARD_TYPE_COLLECTION:I = 0xf

.field public static final CARD_TYPE_COMMENT:I = 0x4

.field public static final CARD_TYPE_COMMENT_BOTTOM:I = 0x22

.field public static final CARD_TYPE_COMMENT_EDIT_ITEM:I = 0x24

.field public static final CARD_TYPE_COMMENT_ITEM:I = 0xbb8

.field public static final CARD_TYPE_COMMENT_LOADING:I = 0x23

.field public static final CARD_TYPE_CONTENT:I = 0xe

.field public static final CARD_TYPE_CONTINUE_PLAY:I = 0x16

.field public static final CARD_TYPE_CONTINUE_PLAY_FULL:I = 0x898

.field public static final CARD_TYPE_FAN_QUAN_FULL:I = 0x15

.field public static final CARD_TYPE_FEED:I = 0x26

.field public static final CARD_TYPE_FUNCTION:I = 0xd

.field public static final CARD_TYPE_GAME:I = 0x6

.field public static final CARD_TYPE_GUIDE:I = 0xb

.field public static final CARD_TYPE_H5_FULL:I = 0x25d

.field public static final CARD_TYPE_HALF_SCREEN_CARD:I = 0x18

.field public static final CARD_TYPE_HALF_SCREEN_SECOND_CARD:I = 0x19

.field public static final CARD_TYPE_HIGHLIGHTS:I = 0x1a

.field public static final CARD_TYPE_INTERACTION:I = 0x9

.field public static final CARD_TYPE_KIDBRAND_ITEM:I = 0x20

.field public static final CARD_TYPE_KIDSTAR_ITEM:I = 0x1f

.field public static final CARD_TYPE_LIVE_SUBSCRIBE:I = 0x25

.field public static final CARD_TYPE_NEW_RELATED_PART:I = 0x11

.field public static final CARD_TYPE_NEW_RELATED_PART_FULL:I = 0x6a4

.field public static final CARD_TYPE_NEW_RELATED_VIDEO_FULL:I = 0x2c3

.field public static final CARD_TYPE_RELATED_PART:I = 0x8

.field public static final CARD_TYPE_RELATED_PART_FULL:I = 0x320

.field public static final CARD_TYPE_RELATED_VIDEO:I = 0x7

.field public static final CARD_TYPE_RELATED_VIDEO_FULL:I = 0x2bc

.field public static final CARD_TYPE_RELATED_VIDEO_LAND:I = 0x452

.field public static final CARD_TYPE_SCG:I = 0x17

.field public static final CARD_TYPE_SCG_FULL:I = 0x913

.field public static final CARD_TYPE_SCG_SINGLE_VIDEO_FULL:I = 0xa8c

.field public static final CARD_TYPE_SCG_SINGLE_VIDEO_SMALL:I = 0x1b

.field public static final CARD_TYPE_SEARCH_RELATED_VIDEO:I = 0x12

.field public static final CARD_TYPE_SEARCH_RELATED_VIDEO_FULL:I = 0x708

.field public static final CARD_TYPE_SERIES:I = 0x3

.field public static final CARD_TYPE_SERIES_CACHE:I = 0x96

.field public static final CARD_TYPE_SERIES_CACHE_V5:I = 0x99

.field public static final CARD_TYPE_SERIES_FULL:I = 0x12c

.field public static final CARD_TYPE_SERIES_FULL_V5:I = 0x12f

.field public static final CARD_TYPE_SHOW_CIRCLE:I = 0x1e

.field public static final CARD_TYPE_SIDESLIPCONTENT:I = 0x10

.field public static final CARD_TYPE_SIDESLIPCONTENT_PART_FULL:I = 0x640

.field public static final CARD_TYPE_SIDESLIP_FULL:I = 0xb54

.field public static final CARD_TYPE_SIDESLIP_SMALL:I = 0x1d

.field public static final CARD_TYPE_STAR:I = 0x13

.field public static final CARD_TYPE_STILLS:I = 0x1c

.field public static final CARD_TYPE_SUBSCRIBE:I = 0x5

.field public static final CARD_TYPE_TMALL_BANNER:I = 0x21

.field public static final CARD_TYPE_VIDEO_DETAIL:I = 0x2

.field public static final CARD_TYPE_VIDEO_DETAIL_FULL:I = 0xc8

.field public static final CARD_TYPE_VIDEO_DETAIL_FULL_V5:I = 0xca

.field public static final CARD_TYPE_VIDEO_DETAIL_SMALL_LAND:I = 0x13c

.field public static final CARD_TYPE_VIP_RECOMMEND:I = 0xa

.field public static final MSG_ADD_CARD:I = 0x2329

.field public static final MSG_BLOCK_POPLAYER:I = 0x1f83

.field public static final MSG_CLOSE_ALL_COLLECTIONS:I = 0x17aa

.field public static final MSG_DOWNLOAD_TIPS_DISMISS:I = 0x8ae

.field public static final MSG_DOWNLOAD_TIPS_SHOW:I = 0x457

.field public static final MSG_GO_BACK:I = 0x1388

.field public static final MSG_REFRESH_GUIDE_PRAISE:I = 0x1b5f

.field public static final MSG_REFRESH_INTERACTION:I = 0x1b60

.field public static final MSG_REFRESH_LITTLE_COMMENT:I = 0x1b5e

.field public static final MSG_REFRESH_LITTLE_DETAIL:I = 0x1b5d

.field public static final MSG_REFRESH_NEW_RELATED_PART:I = 0x1b61

.field public static final MSG_REFRESH_RELATED_PART:I = 0x1b5c

.field public static final MSG_REMOVE_BIGWORDS:I = 0x1f48

.field public static final MSG_REMOVE_BLOCK_POPLAYER:I = 0x1f84

.field public static final MSG_REMOVE_CONTENT:I = 0x1f43

.field public static final MSG_REMOVE_FUNCTION:I = 0x1f44

.field public static final MSG_REMOVE_HIGHLIGHTS:I = 0x1f49

.field public static final MSG_REMOVE_NEW_RELATED_PART:I = 0x1f46

.field public static final MSG_REMOVE_RELATED_PART:I = 0x1f42

.field public static final MSG_REMOVE_RELATED_VIDEO:I = 0x1f41

.field public static final MSG_REMOVE_SEARCH_RELATED_VIDEO:I = 0x1f47

.field public static final MSG_REMOVE_SIDESLIP:I = 0x1f82

.field public static final MSG_REMOVE_SIDESLIPCONTENT:I = 0x1f45

.field public static final MSG_REMOVE_STAR:I = 0x1f4b

.field public static final MSG_REMOVE_STILLS:I = 0x1f4a

.field public static final MSG_SHOW_ALL_COLLECTIONS:I = 0x17a9

.field public static final MSG_SHOW_ALL_COMMENT:I = 0x1778

.field public static final MSG_SHOW_ALL_CONTINUE_PLAY:I = 0x17ac

.field public static final MSG_SHOW_ALL_DETAIL:I = 0x1771

.field public static final MSG_SHOW_ALL_H5:I = 0x17a7

.field public static final MSG_SHOW_ALL_H5_BY_PLAYER:I = 0x17a8

.field public static final MSG_SHOW_ALL_NEW_RELATED_PART:I = 0x17ab

.field public static final MSG_SHOW_ALL_NEW_RELATED_VIDEO:I = 0x177d

.field public static final MSG_SHOW_ALL_RELATED_PART:I = 0x1776

.field public static final MSG_SHOW_ALL_RELATED_VIDEO:I = 0x177b

.field public static final MSG_SHOW_ALL_SCG:I = 0x17ad

.field public static final MSG_SHOW_ALL_SERIES:I = 0x1773

.field public static final MSG_SHOW_ALL_SERIES_CACHE:I = 0x1775

.field public static final MSG_SHOW_ALL_SIDESLIP_PART:I = 0x177c

.field public static final MSG_SHOW_ALL_SINGLE_VIDEO_SCG:I = 0x17ae

.field public static final MSG_SHOW_DOU_BAN:I = 0x17af

.field public static final MSG_SHOW_LITTLE_COMMENT:I = 0x1779

.field public static final MSG_SHOW_LITTLE_DETAIL:I = 0x1772

.field public static final MSG_SHOW_LITTLE_RELATED_PART:I = 0x1777

.field public static final MSG_SHOW_LITTLE_SERIES:I = 0x1774

.field public static final MSG_SHOW_MAIN_DETAIL:I = 0x177a


# virtual methods
.method public abstract getView()Landroid/view/View;
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onResume()V
.end method

.method public abstract refresh()V
.end method

.method public abstract setHandler(Landroid/os/Handler;)V
.end method
