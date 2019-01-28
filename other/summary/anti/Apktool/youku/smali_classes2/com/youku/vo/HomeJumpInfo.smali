.class public Lcom/youku/vo/HomeJumpInfo;
.super Ljava/lang/Object;
.source "HomeJumpInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x3286d225a60f9bf7L


# instance fields
.field public cid:Ljava/lang/String;

.field public cn:Ljava/lang/String;

.field public column_id:I

.field public column_pos:I

.field public cps_id:Ljava/lang/String;

.field public game_id:Ljava/lang/String;

.field public recommandCardPos:I

.field public sub_channel_id:I

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

    iput-object v0, p0, Lcom/youku/vo/HomeJumpInfo;->type:Ljava/lang/String;

    .line 14
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/vo/HomeJumpInfo;->cid:Ljava/lang/String;

    .line 16
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/vo/HomeJumpInfo;->title:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/vo/HomeJumpInfo;->url:Ljava/lang/String;

    .line 20
    iput v1, p0, Lcom/youku/vo/HomeJumpInfo;->url_open_way:I

    .line 22
    iput v1, p0, Lcom/youku/vo/HomeJumpInfo;->sub_channel_id:I

    .line 24
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/vo/HomeJumpInfo;->game_id:Ljava/lang/String;

    .line 26
    iput v1, p0, Lcom/youku/vo/HomeJumpInfo;->column_id:I

    .line 28
    iput v1, p0, Lcom/youku/vo/HomeJumpInfo;->column_pos:I

    .line 30
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/vo/HomeJumpInfo;->cn:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/vo/HomeJumpInfo;->cps_id:Ljava/lang/String;

    .line 10
    return-void
.end method
