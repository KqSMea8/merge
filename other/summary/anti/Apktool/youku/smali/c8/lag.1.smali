.class public Lc8/lag;
.super Ljava/lang/Object;
.source "WXTracing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/mag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TraceInfo"
.end annotation


# instance fields
.field public domQueueTime:J

.field public domThreadNanos:J

.field public domThreadStart:J

.field public rootEventId:I

.field public uiQueueTime:J

.field public uiThreadNanos:J

.field public uiThreadStart:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-wide v0, p0, Lc8/lag;->domThreadStart:J

    .line 126
    iput-wide v0, p0, Lc8/lag;->uiThreadStart:J

    return-void
.end method
