.class public Lcom/taobao/onlinemonitor/OnLineMonitor$BundleInfo;
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
    name = "BundleInfo"
.end annotation


# instance fields
.field public activityName:Ljava/lang/String;

.field public bundleAction:I

.field public bundleName:Ljava/lang/String;

.field public isInBoot:Z

.field public resourceUsedInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field public threadId:J

.field public threadName:Ljava/lang/String;

.field public tid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5853
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
