.class public Lc8/Hqb;
.super Lc8/MXf;
.source "WXFestivalModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lc8/MXf;-><init>()V

    return-void
.end method


# virtual methods
.method public queryFestivalStyle()Ljava/util/Map;
    .locals 2
    .annotation runtime Lc8/KVf;
        uiThread = false
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    invoke-static {}, Lc8/Fob;->getInstance()Lc8/Fob;

    move-result-object v1

    invoke-virtual {v1}, Lc8/Fob;->getFestivalModuleAdapter()Lc8/Mob;

    move-result-object v0

    .line 26
    .local v0, "festivalAdapter":Lc8/Mob;
    if-eqz v0, :cond_0

    .line 27
    invoke-interface {v0}, Lc8/Mob;->queryFestivalStyle()Ljava/util/Map;

    move-result-object v1

    .line 29
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setFestivalStyle(Ljava/lang/String;Lc8/EWf;Lc8/EWf;)V
    .locals 2
    .param p1, "festival"    # Ljava/lang/String;
    .param p2, "sucCallback"    # Lc8/EWf;
    .param p3, "failCallback"    # Lc8/EWf;
    .annotation runtime Lc8/KVf;
    .end annotation

    .prologue
    .line 41
    invoke-static {}, Lc8/Fob;->getInstance()Lc8/Fob;

    move-result-object v1

    invoke-virtual {v1}, Lc8/Fob;->getFestivalModuleAdapter()Lc8/Mob;

    move-result-object v0

    .line 42
    .local v0, "festivalAdapter":Lc8/Mob;
    if-eqz v0, :cond_0

    .line 43
    iget-object v1, p0, Lc8/Hqb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v1}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Lc8/Mob;->setFestivalStyle(Landroid/content/Context;Ljava/lang/String;Lc8/EWf;Lc8/EWf;)V

    .line 45
    :cond_0
    return-void
.end method
