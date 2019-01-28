.class public Lcom/alibaba/poplayer/utils/PopLayerSharedPrererence;
.super Ljava/lang/Object;
.source "PopLayerSharedPrererence.java"


# static fields
.field public static final SP_POPLAYER:Ljava/lang/String; = "sp_poplayer_xxx_yyy_zzz"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearPopCounts()V
    .locals 2

    .prologue
    .line 47
    invoke-static {}, Lcom/alibaba/poplayer/utils/PopLayerSharedPrererence;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 48
    .local v0, "sp":Landroid/content/SharedPreferences;
    if-nez v0, :cond_0

    .line 50
    :goto_0
    return-void

    .line 49
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public static getPopCountsFor(Ljava/lang/String;I)I
    .locals 1
    .param p0, "uuid"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .prologue
    .line 33
    invoke-static {}, Lcom/alibaba/poplayer/utils/PopLayerSharedPrererence;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 34
    .local v0, "sp":Landroid/content/SharedPreferences;
    if-nez v0, :cond_0

    .line 35
    .end local p1    # "defaultValue":I
    :goto_0
    return p1

    .restart local p1    # "defaultValue":I
    :cond_0
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    goto :goto_0
.end method

.method private static getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-static {}, Lcom/alibaba/poplayer/PopLayer;->getReference()Lcom/alibaba/poplayer/PopLayer;

    move-result-object v1

    if-nez v1, :cond_1

    .line 28
    :cond_0
    :goto_0
    return-object v0

    .line 25
    :cond_1
    invoke-static {}, Lcom/alibaba/poplayer/PopLayer;->getReference()Lcom/alibaba/poplayer/PopLayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/poplayer/PopLayer;->getApp()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 28
    invoke-static {}, Lcom/alibaba/poplayer/PopLayer;->getReference()Lcom/alibaba/poplayer/PopLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/poplayer/PopLayer;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "sp_poplayer_xxx_yyy_zzz"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0
.end method

.method public static increasePopCountsFor(Ljava/lang/String;)I
    .locals 3
    .param p0, "uuid"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-static {}, Lcom/alibaba/poplayer/utils/PopLayerSharedPrererence;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 40
    .local v1, "sp":Landroid/content/SharedPreferences;
    if-nez v1, :cond_0

    const/4 v0, -0x1

    .line 43
    :goto_0
    return v0

    .line 41
    :cond_0
    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 42
    .local v0, "count":I
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v2, p0, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method
