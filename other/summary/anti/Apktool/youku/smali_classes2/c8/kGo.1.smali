.class public Lc8/kGo;
.super Ljava/lang/Object;
.source "VipMtopConfig.java"


# static fields
.field private static final ROOT:Ljava/lang/String; = "VIP"

.field private static final VIP_DEVICE:Ljava/lang/String; = "vip_device"

.field private static final VIP_IS_DEBUG:Ljava/lang/String; = "vip_is_debug"

.field private static final VIP_LAYOUT:Ljava/lang/String; = "vip_layout"

.field private static mInstance:Lc8/kGo;

.field private static final mLock:Ljava/lang/Object;


# instance fields
.field private debug:I

.field private device:Ljava/lang/String;

.field private layout_ver:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc8/kGo;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0x7d0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {}, Lc8/Dfh;->getEnvType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 44
    const-string/jumbo v0, "youkuvip_android"

    iput-object v0, p0, Lc8/kGo;->device:Ljava/lang/String;

    .line 45
    iput v4, p0, Lc8/kGo;->layout_ver:I

    .line 46
    iput v2, p0, Lc8/kGo;->debug:I

    .line 56
    :goto_0
    const-string/jumbo v0, "vip_device"

    iget-object v1, p0, Lc8/kGo;->device:Ljava/lang/String;

    invoke-static {v0, v1}, Lc8/KPg;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/kGo;->device:Ljava/lang/String;

    .line 57
    const-string/jumbo v0, "vip_layout"

    iget v1, p0, Lc8/kGo;->layout_ver:I

    invoke-static {v0, v1}, Lc8/KPg;->get(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lc8/kGo;->layout_ver:I

    .line 58
    const-string/jumbo v0, "vip_is_debug"

    iget v1, p0, Lc8/kGo;->debug:I

    invoke-static {v0, v1}, Lc8/KPg;->get(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lc8/kGo;->debug:I

    .line 59
    return-void

    .line 47
    :cond_0
    invoke-static {}, Lc8/Dfh;->getEnvType()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 48
    const-string/jumbo v0, "ANDROID_TEST"

    iput-object v0, p0, Lc8/kGo;->device:Ljava/lang/String;

    .line 49
    iput v4, p0, Lc8/kGo;->layout_ver:I

    .line 50
    iput v3, p0, Lc8/kGo;->debug:I

    goto :goto_0

    .line 52
    :cond_1
    const-string/jumbo v0, "ANDROID"

    iput-object v0, p0, Lc8/kGo;->device:Ljava/lang/String;

    .line 53
    const v0, 0x186a0

    iput v0, p0, Lc8/kGo;->layout_ver:I

    .line 54
    iput v2, p0, Lc8/kGo;->debug:I

    goto :goto_0
.end method

.method public static getInstance()Lc8/kGo;
    .locals 3

    .prologue
    .line 30
    sget-object v0, Lc8/kGo;->mInstance:Lc8/kGo;

    if-nez v0, :cond_1

    .line 31
    sget-object v1, Lc8/kGo;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 32
    :try_start_0
    sget-object v0, Lc8/kGo;->mInstance:Lc8/kGo;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lc8/kGo;

    invoke-direct {v0}, Lc8/kGo;-><init>()V

    sput-object v0, Lc8/kGo;->mInstance:Lc8/kGo;

    .line 35
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :cond_1
    const-string/jumbo v0, "VipMtopConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "device="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lc8/kGo;->mInstance:Lc8/kGo;

    iget-object v2, v2, Lc8/kGo;->device:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\nlayout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lc8/kGo;->mInstance:Lc8/kGo;

    iget v2, v2, Lc8/kGo;->layout_ver:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\ndebug="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lc8/kGo;->mInstance:Lc8/kGo;

    iget v2, v2, Lc8/kGo;->debug:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/cIo;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    sget-object v0, Lc8/kGo;->mInstance:Lc8/kGo;

    return-object v0

    .line 35
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getDebug()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lc8/kGo;->debug:I

    return v0
.end method

.method public getDevice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lc8/kGo;->device:Ljava/lang/String;

    return-object v0
.end method

.method public getLayout_ver()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lc8/kGo;->layout_ver:I

    return v0
.end method

.method public getRoot()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    const-string/jumbo v0, "VIP"

    return-object v0
.end method

.method public setDebug(I)V
    .locals 0
    .param p1, "debug"    # I

    .prologue
    .line 62
    iput p1, p0, Lc8/kGo;->debug:I

    .line 63
    return-void
.end method

.method public setDevice(Ljava/lang/String;)V
    .locals 0
    .param p1, "device"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lc8/kGo;->device:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setLayout_ver(I)V
    .locals 0
    .param p1, "layout_ver"    # I

    .prologue
    .line 78
    iput p1, p0, Lc8/kGo;->layout_ver:I

    .line 79
    return-void
.end method
