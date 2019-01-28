.class public Lc8/YH;
.super Ljava/lang/Object;
.source "StorageMgr.java"


# static fields
.field public static final ERROR:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkSDCard()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 23
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, "state":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v2, "mounted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 25
    const/4 v1, 0x1

    .line 30
    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v2

    goto :goto_0
.end method
