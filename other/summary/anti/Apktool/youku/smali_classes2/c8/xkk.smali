.class public Lc8/xkk;
.super Ljava/lang/Object;
.source "FeedDataInfo.java"


# instance fields
.field public arg1:Ljava/lang/String;

.field public avator:Ljava/lang/String;

.field public duration:Ljava/lang/String;

.field public isShowInsert:Z

.field public myChannel:Ljava/lang/String;

.field public playVV:J

.field public scm:Ljava/lang/String;

.field public seconds:D

.field public spm:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public trackInfo:Ljava/lang/String;

.field public userId:Ljava/lang/String;

.field public username:Ljava/lang/String;

.field public videoId:Ljava/lang/String;

.field public videoImg:Ljava/lang/String;

.field public videoLongId:Ljava/lang/String;

.field public videoSize:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/xkk;->scm:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/xkk;->spm:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/xkk;->trackInfo:Ljava/lang/String;

    .line 20
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/xkk;->arg1:Ljava/lang/String;

    .line 22
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/xkk;->avator:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/xkk;->isShowInsert:Z

    return-void
.end method
