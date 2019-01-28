.class public Lc8/wUf;
.super Lc8/RD;
.source "JSHotPatchBridge.java"


# static fields
.field private static final CleanHotPatch:Ljava/lang/String; = "cleanHotPatch"

.field private static final GetHotPatchInfo:Ljava/lang/String; = "getHotPatchInfo"

.field private static final JSHotPatchBridge:Ljava/lang/String; = "JSHotPatchBridge"

.field private static final TAG:Ljava/lang/String; = "JSHotPatchBridge"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lc8/RD;-><init>()V

    return-void
.end method

.method public static init()V
    .locals 3

    .prologue
    .line 23
    const-string/jumbo v0, "JSHotPatchBridge"

    const-class v1, Lc8/wUf;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lc8/jE;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;Z)V

    .line 24
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    const/4 v2, 0x1

    .line 28
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 29
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "action is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    const-string/jumbo v3, "getHotPatchInfo"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 32
    invoke-static {}, Lc8/tUf;->getInstance()Lc8/tUf;

    move-result-object v3

    invoke-virtual {v3}, Lc8/tUf;->getSuccessedPatchInfo()Lc8/EUf;

    move-result-object v0

    .line 33
    .local v0, "patchInfo":Lc8/EUf;
    if-eqz p3, :cond_0

    .line 34
    new-instance v1, Lc8/kE;

    invoke-direct {v1}, Lc8/kE;-><init>()V

    .line 35
    .local v1, "result":Lc8/kE;
    const-string/jumbo v3, "info"

    invoke-virtual {v0}, Lc8/EUf;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p3, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V

    .line 49
    .end local v0    # "patchInfo":Lc8/EUf;
    .end local v1    # "result":Lc8/kE;
    :cond_0
    :goto_0
    return v2

    .line 40
    :cond_1
    const-string/jumbo v3, "cleanHotPatch"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 42
    invoke-static {}, Lc8/tUf;->getInstance()Lc8/tUf;

    move-result-object v3

    invoke-virtual {v3, v2}, Lc8/tUf;->cleanPatchs(Z)V

    .line 43
    new-instance v1, Lc8/kE;

    invoke-direct {v1}, Lc8/kE;-><init>()V

    .line 44
    .restart local v1    # "result":Lc8/kE;
    const-string/jumbo v3, "info"

    const-string/jumbo v4, "succeed"

    invoke-virtual {v1, v3, v4}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p3, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V

    goto :goto_0

    .line 49
    .end local v1    # "result":Lc8/kE;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method
