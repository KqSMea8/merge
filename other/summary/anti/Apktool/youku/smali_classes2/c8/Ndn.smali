.class public Lc8/Ndn;
.super Ljava/lang/Object;
.source "DownloadInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/service/download/DownloadInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SegInfo"
.end annotation


# instance fields
.field public curPos:J

.field public fileid:Ljava/lang/String;

.field public id:I

.field public md5:Ljava/lang/String;

.field public retryTime:I

.field public size:J

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1001
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isComplete()Z
    .locals 4

    .prologue
    .line 1011
    iget-wide v0, p0, Lc8/Ndn;->size:J

    iget-wide v2, p0, Lc8/Ndn;->curPos:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
