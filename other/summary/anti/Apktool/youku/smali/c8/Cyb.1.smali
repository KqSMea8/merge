.class public Lc8/Cyb;
.super Ljava/lang/Object;
.source "WXModuleUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findComponentByRef(Ljava/lang/String;Ljava/lang/String;)Lc8/tbg;
    .locals 1
    .param p0, "instanceId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "ref"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 29
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/pVf;->getWXRenderManager()Lc8/Cag;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lc8/Cag;->getWXComponent(Ljava/lang/String;Ljava/lang/String;)Lc8/tbg;

    move-result-object v0

    return-object v0
.end method

.method public static findViewByRef(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 2
    .param p0, "instanceId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "ref"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 20
    invoke-static {p0, p1}, Lc8/Cyb;->findComponentByRef(Ljava/lang/String;Ljava/lang/String;)Lc8/tbg;

    move-result-object v0

    .line 21
    .local v0, "component":Lc8/tbg;
    if-nez v0, :cond_0

    .line 22
    const/4 v1, 0x0

    .line 24
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lc8/tbg;->getHostView()Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method
