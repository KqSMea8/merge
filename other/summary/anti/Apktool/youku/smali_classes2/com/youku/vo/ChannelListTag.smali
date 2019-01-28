.class public Lcom/youku/vo/ChannelListTag;
.super Ljava/lang/Object;
.source "ChannelListTag.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final DISPLAY_TYPE_IMAGE:I = 0x1

.field public static final DISPLAY_TYPE_TEXT:I = 0x0

.field public static final JUMP_TYPE_CHANNEL:I = 0x2

.field public static final JUMP_TYPE_CHANNEL_FILTERS:I = 0x19

.field public static final JUMP_TYPE_CHANNEL_PAGE:I = 0xf

.field public static final JUMP_TYPE_DISCOVERY:I = 0xd

.field public static final JUMP_TYPE_GROUP:I = 0xe

.field public static final JUMP_TYPE_HOT_WORD:I = 0x4

.field public static final JUMP_TYPE_LAIFENG_SQUARE:I = 0x1f

.field public static final JUMP_TYPE_LIVE_BROADCAST:I = 0x11

.field public static final JUMP_TYPE_LIVE_LIST:I = 0x13

.field public static final JUMP_TYPE_NO_JUMP:I = 0x1

.field public static final JUMP_TYPE_PAI_PIAN_BIAO:I = 0x15

.field public static final JUMP_TYPE_PLAY_MENU:I = 0xc

.field public static final JUMP_TYPE_PLAY_PAGE:I = 0x17

.field public static final JUMP_TYPE_SUBJECT:I = 0x10

.field public static final JUMP_TYPE_SUB_CHANNEL:I = 0x3

.field public static final JUMP_TYPE_SUB_GAME_CENTER:I = 0x5

.field public static final JUMP_TYPE_THEME:I = 0x12

.field public static final JUMP_TYPE_TOPIC_DETAIL:I = 0x16

.field public static final JUMP_TYPE_URL:I = 0x7

.field public static final JUMP_TYPE_VIDEO_LIST:I = 0xb


# instance fields
.field public areaPosition:I

.field public areaTitle:Ljava/lang/String;

.field public channel_id:I

.field public content_id:Ljava/lang/String;

.field public cps_id:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public display_icons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public display_type:I

.field public first_episode_video_id:Ljava/lang/String;

.field public hot_word:Ljava/lang/String;

.field public icon:Ljava/lang/String;

.field public id:I

.field public jump_type:I

.field public live_broadcast_id:Ljava/lang/String;

.field public live_broadcast_image:Ljava/lang/String;

.field public live_broadcast_title:Ljava/lang/String;

.field public live_broadcast_url:Ljava/lang/String;

.field public nav_id:I

.field public page_id:I

.field public position:I

.field public present_type:I

.field public sub_channel_id:I

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public video_id:Ljava/lang/String;

.field public video_list_id:I

.field public video_type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method
