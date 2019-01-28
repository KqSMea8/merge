.class public Lcom/taobao/onlinemonitor/OnLineMonitor$IOStat;
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
    name = "IOStat"
.end annotation


# instance fields
.field public avgIOWaitTime:I

.field public currentIOWaitTime:I

.field public openedFileCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5088
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
