.class public Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor$ImageSizeWarningException;
.super Lcom/taobao/phenix/loader/network/NetworkResponseException;
.source "TBImageFlowMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Twf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageSizeWarningException"
.end annotation


# static fields
.field private static sImageWarningSize:I


# instance fields
.field private final exceededTimes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 584
    const/4 v0, 0x0

    sput v0, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor$ImageSizeWarningException;->sImageWarningSize:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "size"    # I

    .prologue
    .line 596
    const/16 v0, 0xc8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "image size["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] exceeded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor$ImageSizeWarningException;->sImageWarningSize:I

    div-int v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " times"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/taobao/phenix/loader/network/NetworkResponseException;-><init>(ILjava/lang/String;)V

    .line 597
    sget v0, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor$ImageSizeWarningException;->sImageWarningSize:I

    div-int v0, p1, v0

    iput v0, p0, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor$ImageSizeWarningException;->exceededTimes:I

    .line 598
    return-void
.end method

.method public static synthetic access$002(I)I
    .locals 0
    .param p0, "x0"    # I
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 582
    sput p0, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor$ImageSizeWarningException;->sImageWarningSize:I

    return p0
.end method

.method public static synthetic access$100(I)Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor$ImageSizeWarningException;
    .locals 1
    .param p0, "x0"    # I
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 582
    invoke-static {p0}, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor$ImageSizeWarningException;->newWarningExceptionIfExceeded(I)Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor$ImageSizeWarningException;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic access$200(Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor$ImageSizeWarningException;)I
    .locals 1
    .param p0, "x0"    # Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor$ImageSizeWarningException;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 582
    iget v0, p0, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor$ImageSizeWarningException;->exceededTimes:I

    return v0
.end method

.method private static newWarningExceptionIfExceeded(I)Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor$ImageSizeWarningException;
    .locals 1
    .param p0, "size"    # I

    .prologue
    .line 587
    sget v0, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor$ImageSizeWarningException;->sImageWarningSize:I

    if-lez v0, :cond_0

    sget v0, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor$ImageSizeWarningException;->sImageWarningSize:I

    if-ge p0, v0, :cond_1

    .line 588
    :cond_0
    const/4 v0, 0x0

    .line 590
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor$ImageSizeWarningException;

    invoke-direct {v0, p0}, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor$ImageSizeWarningException;-><init>(I)V

    goto :goto_0
.end method
