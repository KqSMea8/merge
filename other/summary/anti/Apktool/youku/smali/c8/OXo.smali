.class public Lc8/OXo;
.super Lc8/MXf;
.source "YoukuSecurityModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/NXo;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "YoukuSecurityModule"


# instance fields
.field pageName:Ljava/lang/String;

.field spm:Ljava/lang/String;

.field trackInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lc8/MXf;-><init>()V

    .line 79
    return-void
.end method

.method private reportPV()V
    .locals 5

    .prologue
    .line 62
    iget-object v1, p0, Lc8/OXo;->pageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v1, p0, Lc8/OXo;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v1}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 67
    .local v0, "ctx":Landroid/content/Context;
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "#reportPV# pageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/OXo;->pageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " spm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/OXo;->spm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    invoke-static {}, Lc8/JWc;->getInstance()Lc8/JWc;

    move-result-object v1

    check-cast v0, Landroid/app/Activity;

    .end local v0    # "ctx":Landroid/content/Context;
    iget-object v2, p0, Lc8/OXo;->pageName:Ljava/lang/String;

    iget-object v3, p0, Lc8/OXo;->spm:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Lc8/JWc;->startSessionForUt(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0
.end method


# virtual methods
.method public getSecurityToken()Ljava/lang/String;
    .locals 1
    .annotation runtime Lc8/KVf;
        uiThread = false
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lc8/OXo;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v0}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc8/VXo;->getWToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public startSecurityVerifyUI(ILc8/EWf;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "callback"    # Lc8/EWf;
    .annotation runtime Lc8/KVf;
        uiThread = false
    .end annotation

    .prologue
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "youku page module, startVerifyUI, type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lc8/OXo;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v0}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lc8/MXo;

    invoke-direct {v1, p0, p2}, Lc8/MXo;-><init>(Lc8/OXo;Lc8/EWf;)V

    invoke-static {v0, v1}, Lc8/VXo;->startVerifyUI(Landroid/content/Context;Lc8/NXo;)V

    .line 56
    return-void
.end method
