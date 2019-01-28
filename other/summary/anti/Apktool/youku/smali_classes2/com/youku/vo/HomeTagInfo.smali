.class public Lcom/youku/vo/HomeTagInfo;
.super Ljava/lang/Object;
.source "HomeTagInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x25c2e67d85511ecdL


# instance fields
.field public broadcast_image:Ljava/lang/String;

.field public channel_title:Ljava/lang/String;

.field public cid:Ljava/lang/String;

.field public cn:Ljava/lang/String;

.field public column_id:I

.field public column_pos:I

.field public content_id:Ljava/lang/String;

.field public content_type:Ljava/lang/String;

.field public cps_id:Ljava/lang/String;

.field public cs:Ljava/lang/String;

.field public first_episode_video_id:Ljava/lang/String;

.field public flag:Ljava/lang/String;

.field public game_id:Ljava/lang/String;

.field public hotword:Ljava/lang/String;

.field public jump_id_encode:Ljava/lang/String;

.field public live_sdk_type:I

.field public sub_channel_id:I

.field public subject_jump_id:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public url_open_way:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/vo/HomeTagInfo;->type:Ljava/lang/String;

    .line 14
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/vo/HomeTagInfo;->cid:Ljava/lang/String;

    .line 16
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/vo/HomeTagInfo;->title:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/vo/HomeTagInfo;->channel_title:Ljava/lang/String;

    .line 20
    iput v1, p0, Lcom/youku/vo/HomeTagInfo;->sub_channel_id:I

    .line 22
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/vo/HomeTagInfo;->game_id:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/vo/HomeTagInfo;->hotword:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/vo/HomeTagInfo;->url:Ljava/lang/String;

    .line 28
    iput v1, p0, Lcom/youku/vo/HomeTagInfo;->url_open_way:I

    .line 30
    iput v1, p0, Lcom/youku/vo/HomeTagInfo;->column_id:I

    .line 32
    iput v1, p0, Lcom/youku/vo/HomeTagInfo;->column_pos:I

    .line 34
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/vo/HomeTagInfo;->cn:Ljava/lang/String;

    .line 36
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/vo/HomeTagInfo;->cs:Ljava/lang/String;

    .line 38
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/vo/HomeTagInfo;->subject_jump_id:Ljava/lang/String;

    .line 40
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/vo/HomeTagInfo;->content_type:Ljava/lang/String;

    .line 42
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/vo/HomeTagInfo;->content_id:Ljava/lang/String;

    .line 44
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/vo/HomeTagInfo;->first_episode_video_id:Ljava/lang/String;

    .line 46
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/vo/HomeTagInfo;->broadcast_image:Ljava/lang/String;

    .line 48
    iput v1, p0, Lcom/youku/vo/HomeTagInfo;->live_sdk_type:I

    .line 50
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/vo/HomeTagInfo;->flag:Ljava/lang/String;

    .line 52
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/vo/HomeTagInfo;->jump_id_encode:Ljava/lang/String;

    .line 54
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/vo/HomeTagInfo;->cps_id:Ljava/lang/String;

    .line 10
    return-void
.end method
