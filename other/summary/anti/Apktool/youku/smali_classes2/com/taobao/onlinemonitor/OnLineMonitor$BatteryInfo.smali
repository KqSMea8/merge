.class public Lcom/taobao/onlinemonitor/OnLineMonitor$BatteryInfo;
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
    name = "BatteryInfo"
.end annotation


# instance fields
.field public batteryHealth:I

.field public batteryPercent:I

.field public batteryStatus:I

.field public batteryTemp:D

.field public batteryV:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
