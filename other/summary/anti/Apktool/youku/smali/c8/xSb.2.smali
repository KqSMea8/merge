.class public Lc8/xSb;
.super Ljava/lang/Object;
.source "AdapterLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/vSb;,
        Lc8/wSb;
    }
.end annotation


# instance fields
.field enabling:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lc8/xSb;->enabling:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    return-void
.end method

.method synthetic constructor <init>(Lc8/vSb;)V
    .locals 0
    .param p1, "x0"    # Lc8/vSb;

    .prologue
    .line 12
    invoke-direct {p0}, Lc8/xSb;-><init>()V

    return-void
.end method

.method public static getInstance()Lc8/xSb;
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Lc8/wSb;->access$100()Lc8/xSb;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public loaderStart(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    iget-object v1, p0, Lc8/xSb;->enabling:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    const-string/jumbo v1, "MotuAdapter"

    const-string/jumbo v2, "load start"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    new-instance v0, Lc8/ASb;

    invoke-direct {v0}, Lc8/ASb;-><init>()V

    .line 35
    .local v0, "callBack":Lc8/ASb;
    invoke-virtual {v0, p1}, Lc8/ASb;->registAndCallBack(Landroid/content/Context;)V

    .line 39
    const-string/jumbo v1, "MotuAdapter"

    const-string/jumbo v2, "load end"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .end local v0    # "callBack":Lc8/ASb;
    :cond_0
    return-void
.end method
