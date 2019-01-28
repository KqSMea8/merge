.class public Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;
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
    name = "DeviceInfo"
.end annotation


# instance fields
.field public apiLevel:I

.field public cpuArch:Ljava/lang/String;

.field public cpuBrand:Ljava/lang/String;

.field public cpuFreqArray:[F

.field public cpuMaxFreq:F

.field public cpuMinFreq:F

.field public cpuModel:Ljava/lang/String;

.field public cpuProcessCount:I

.field public density:F

.field public deviceTotalAvailMemory:J

.field public deviceTotalMemory:J

.field public gpuBrand:Ljava/lang/String;

.field public gpuMaxFreq:J

.field public gpuModel:Ljava/lang/String;

.field public isEmulator:Z

.field public isRooted:Z

.field public memoryThreshold:I

.field public mobileBrand:Ljava/lang/String;

.field public mobileModel:Ljava/lang/String;

.field public screenHeght:I

.field public screenWidth:I

.field public storeFreesize:I

.field public storeTotalSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5173
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->mobileModel:Ljava/lang/String;

    .line 5177
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v0, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->mobileBrand:Ljava/lang/String;

    .line 5185
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->apiLevel:I

    return-void
.end method
