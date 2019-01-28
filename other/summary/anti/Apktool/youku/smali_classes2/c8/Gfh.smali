.class public Lc8/Gfh;
.super Ljava/lang/Object;
.source "YoukuProcessUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isMainProcess()Z
    .locals 3

    .prologue
    .line 14
    invoke-static {}, Lc8/Ffh;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 15
    .local v0, "contenxt":Landroid/content/Context;
    invoke-static {v0}, Landroid/taobao/atlas/runtime/RuntimeVariables;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method
