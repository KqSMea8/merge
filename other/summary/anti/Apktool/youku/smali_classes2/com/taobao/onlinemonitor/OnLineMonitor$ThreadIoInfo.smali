.class public Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;
.super Ljava/lang/Object;
.source "OnLineMonitor.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/msf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThreadIoInfo"
.end annotation


# instance fields
.field public activityName:Ljava/lang/String;

.field public id:J

.field public ioWaitCount:I

.field public ioWaitTime:I

.field public methodName:Ljava/lang/String;

.field public multiplex:Z

.field public name:Ljava/lang/String;

.field public netTimes:I

.field public nice:I

.field public readTimes:I

.field public readWriteTimes:I

.field public stacks:Ljava/lang/String;

.field public tid:I

.field public useTime:J

.field public writeTimes:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
