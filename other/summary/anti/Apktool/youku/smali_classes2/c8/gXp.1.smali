.class public Lc8/gXp;
.super Ljava/lang/Object;
.source "MeizuRegister.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/fXp;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "accs.MeizuPush"

.field private static mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "appKey"    # Ljava/lang/String;

    .prologue
    .line 25
    :try_start_0
    invoke-static {}, Lc8/DLd;->isBrandMeizu()Z

    move-result v1

    if-nez v1, :cond_1

    .line 39
    :cond_0
    :goto_0
    return-void

    .line 29
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 30
    sput-object v1, Lc8/gXp;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/taobao/accs/utl/UtilityImpl;->isMainProcess(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    new-instance v1, Lc8/fXp;

    invoke-direct {v1}, Lc8/fXp;-><init>()V

    invoke-static {v1}, Lc8/gXe;->addNotifyListener(Lc8/fXe;)V

    .line 35
    sget-object v1, Lc8/gXp;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lc8/AGd;->register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v1, "accs.MeizuPush"

    const-string/jumbo v2, "register"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method
