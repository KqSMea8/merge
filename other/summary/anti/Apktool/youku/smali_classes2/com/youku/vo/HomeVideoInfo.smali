.class public Lcom/youku/vo/HomeVideoInfo;
.super Ljava/lang/Object;
.source "HomeVideoInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final serialVersionUID:J = 0x1ed9b61da4710744L


# instance fields
.field public algInfo:Ljava/lang/String;

.field public cid:Ljava/lang/String;

.field public cn:Ljava/lang/String;

.field public color_tag:I

.field public column_id:I

.field public column_pos:I

.field public flag:Ljava/lang/String;

.field public gameCenterVideoInfo:Lcom/youku/vo/GameCenterVideoInfo;

.field public game_page_id:Ljava/lang/String;

.field public game_relation:Ljava/lang/String;

.field public image:Ljava/lang/String;

.field public isRecommandedVideo:Z

.field public is_reputation:I

.field public is_vv:I

.field public live_sdk_type:I

.field public membership_corner_mark:Lc8/vVo;

.field public operation_corner_mark:Lc8/vVo;

.field public paid:I

.field public pgc_uid:Ljava/lang/String;

.field public playlist_id:Ljava/lang/String;

.field public pos:I

.field public profile_image_url:Ljava/lang/String;

.field public recClickLogUrl:Ljava/lang/String;

.field public recext:Ljava/lang/String;

.field public recommandCardPos:I

.field public req_id:Ljava/lang/String;

.field public resourcetype:Ljava/lang/String;

.field public sam:Ljava/lang/String;

.field public scm:Ljava/lang/String;

.field public statics_key:Ljava/lang/String;

.field public subtitle:Ljava/lang/String;

.field public summary:Ljava/lang/String;

.field public summary_location:I

.field public tid:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public type:I

.field public url:Ljava/lang/String;

.field public user_id_encode:Ljava/lang/String;

.field public username:Ljava/lang/String;

.field public videoid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/vo/HomeVideoInfo;->title:Ljava/lang/String;

    .line 14
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/vo/HomeVideoInfo;->subtitle:Ljava/lang/String;

    .line 16
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/vo/HomeVideoInfo;->summary:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/vo/HomeVideoInfo;->image:Ljava/lang/String;

    .line 20
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/vo/HomeVideoInfo;->tid:Ljava/lang/String;

    .line 22
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/vo/HomeVideoInfo;->videoid:Ljava/lang/String;

    .line 24
    iput v1, p0, Lcom/youku/vo/HomeVideoInfo;->paid:I

    .line 26
    iput v1, p0, Lcom/youku/vo/HomeVideoInfo;->type:I

    .line 28
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/vo/HomeVideoInfo;->playlist_id:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/vo/HomeVideoInfo;->url:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/vo/HomeVideoInfo;->cid:Ljava/lang/String;

    .line 34
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/vo/HomeVideoInfo;->pgc_uid:Ljava/lang/String;

    .line 36
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/vo/HomeVideoInfo;->flag:Ljava/lang/String;

    .line 38
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/vo/HomeVideoInfo;->user_id_encode:Ljava/lang/String;

    .line 40
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/vo/HomeVideoInfo;->username:Ljava/lang/String;

    .line 42
    iput v1, p0, Lcom/youku/vo/HomeVideoInfo;->is_vv:I

    .line 44
    iput v1, p0, Lcom/youku/vo/HomeVideoInfo;->color_tag:I

    .line 46
    iput v1, p0, Lcom/youku/vo/HomeVideoInfo;->summary_location:I

    .line 48
    iput v1, p0, Lcom/youku/vo/HomeVideoInfo;->is_reputation:I

    .line 50
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/vo/HomeVideoInfo;->profile_image_url:Ljava/lang/String;

    .line 52
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/vo/HomeVideoInfo;->game_page_id:Ljava/lang/String;

    .line 54
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/vo/HomeVideoInfo;->game_relation:Ljava/lang/String;

    .line 56
    iput v1, p0, Lcom/youku/vo/HomeVideoInfo;->live_sdk_type:I

    .line 58
    iput v1, p0, Lcom/youku/vo/HomeVideoInfo;->pos:I

    .line 60
    iput v1, p0, Lcom/youku/vo/HomeVideoInfo;->column_id:I

    .line 62
    iput v1, p0, Lcom/youku/vo/HomeVideoInfo;->column_pos:I

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lcom/youku/vo/HomeVideoInfo;->recommandCardPos:I

    .line 66
    iput-boolean v1, p0, Lcom/youku/vo/HomeVideoInfo;->isRecommandedVideo:Z

    .line 68
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/vo/HomeVideoInfo;->recClickLogUrl:Ljava/lang/String;

    .line 70
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/vo/HomeVideoInfo;->cn:Ljava/lang/String;

    .line 72
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/vo/HomeVideoInfo;->statics_key:Ljava/lang/String;

    .line 74
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/vo/HomeVideoInfo;->resourcetype:Ljava/lang/String;

    .line 89
    iput-object v2, p0, Lcom/youku/vo/HomeVideoInfo;->membership_corner_mark:Lc8/vVo;

    .line 92
    iput-object v2, p0, Lcom/youku/vo/HomeVideoInfo;->operation_corner_mark:Lc8/vVo;

    .line 10
    return-void
.end method


# virtual methods
.method public isPay()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 95
    iget v1, p0, Lcom/youku/vo/HomeVideoInfo;->paid:I

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
