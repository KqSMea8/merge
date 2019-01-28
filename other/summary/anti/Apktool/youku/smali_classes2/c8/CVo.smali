.class public Lc8/CVo;
.super Ljava/lang/Object;
.source "HomeExtendedAreaData.java"


# instance fields
.field public cn:Ljava/lang/String;

.field public column_id:I

.field public column_pos:I

.field public first_episode_video_id:Ljava/lang/String;

.field public flag:Ljava/lang/String;

.field public followers_count:I

.field public homeTagInfo:Lcom/youku/vo/HomeTagInfo;

.field public icon:Ljava/lang/String;

.field public jump_type:Ljava/lang/String;

.field public playlist_id:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public user_desc:Ljava/lang/String;

.field public user_id:Ljava/lang/String;

.field public user_id_encode:Ljava/lang/String;

.field public user_img:Ljava/lang/String;

.field public username:Ljava/lang/String;

.field public verified:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/CVo;->jump_type:Ljava/lang/String;

    .line 7
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/CVo;->homeTagInfo:Lcom/youku/vo/HomeTagInfo;

    .line 9
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/CVo;->title:Ljava/lang/String;

    .line 11
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/CVo;->icon:Ljava/lang/String;

    .line 13
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/CVo;->username:Ljava/lang/String;

    .line 15
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/CVo;->user_img:Ljava/lang/String;

    .line 17
    iput v1, p0, Lc8/CVo;->followers_count:I

    .line 19
    iput v1, p0, Lc8/CVo;->verified:I

    .line 21
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/CVo;->user_id:Ljava/lang/String;

    .line 23
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/CVo;->user_id_encode:Ljava/lang/String;

    .line 25
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/CVo;->user_desc:Ljava/lang/String;

    .line 27
    iput v1, p0, Lc8/CVo;->column_id:I

    .line 29
    iput v1, p0, Lc8/CVo;->column_pos:I

    .line 31
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/CVo;->cn:Ljava/lang/String;

    .line 33
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/CVo;->playlist_id:Ljava/lang/String;

    .line 35
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/CVo;->first_episode_video_id:Ljava/lang/String;

    .line 37
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/CVo;->flag:Ljava/lang/String;

    return-void
.end method
