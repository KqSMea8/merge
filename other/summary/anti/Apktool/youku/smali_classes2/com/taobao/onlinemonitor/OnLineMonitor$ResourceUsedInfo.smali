.class public Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;
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
    name = "ResourceUsedInfo"
.end annotation


# instance fields
.field public activityName:Ljava/lang/String;

.field public baseTheadMap:Ljava/util/Map;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation
.end field

.field public debugUsedCpuTime:J

.field public debugUsedTime:J

.field public ioWaitCout:J

.field public ioWaitTime:J

.field public isInBootStep:Z

.field public loadClassCount:I

.field public memEnd:I

.field public memJavaEnd:I

.field public memJavaMax:I

.field public memJavaMin:I

.field public memJavaStart:I

.field public memMax:I

.field public memMin:I

.field public memNativeEnd:I

.field public memNativeMax:I

.field public memNativeMin:I

.field public memNativeStart:I

.field public memStart:I

.field public newTheadMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public newThreadCount:I

.field public pidIoWaitCout:I

.field public pidIoWaitTime:I

.field public pidJiffyTime:J

.field public pidSchedWaitCout:I

.field public pidSchedWaitTime:J

.field public schedWaitCout:J

.field public schedWaitTime:J

.field public systemJiffyTime:J

.field public taskName:Ljava/lang/String;

.field public taskQueuePriority:I

.field public taskThreadId:J

.field public taskThreadTid:I

.field public threadEnd:I

.field public threadJiffyTime:J

.field public threadMax:I

.field public threadMin:I

.field public threadName:Ljava/lang/String;

.field public threadStart:I

.field public totalJiffyTime:J

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5864
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
