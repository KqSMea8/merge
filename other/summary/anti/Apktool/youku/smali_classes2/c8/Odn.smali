.class public Lc8/Odn;
.super Ljava/lang/Object;
.source "DownloadInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/service/download/DownloadInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThreadInfo"
.end annotation


# instance fields
.field public curPosition:J

.field public endPosition:J

.field public initialPosition:J

.field public name:Ljava/lang/String;

.field public startPosition:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1057
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
