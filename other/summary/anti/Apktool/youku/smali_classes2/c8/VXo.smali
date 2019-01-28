.class public Lc8/VXo;
.super Ljava/lang/Object;
.source "SecurityUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/UXo;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SecurityUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method public static getWToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x0

    .line 25
    const/4 v5, 0x4

    .line 26
    .local v5, "flag":I
    const/4 v6, 0x0

    .line 27
    .local v6, "env":I
    const/4 v4, 0x0

    .line 31
    .local v4, "extendParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .line 32
    .local v7, "applicationContext":Landroid/content/Context;
    invoke-static {v7}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v10

    .line 33
    .local v10, "manager":Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    const-class v1, Lcom/alibaba/wireless/security/open/securitybody/ISecurityBodyComponent;

    invoke-virtual {v10, v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInterface(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wireless/security/open/securitybody/ISecurityBodyComponent;

    .line 34
    .local v0, "securityBodyComp":Lcom/alibaba/wireless/security/open/securitybody/ISecurityBodyComponent;
    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string/jumbo v3, ""

    invoke-interface/range {v0 .. v6}, Lcom/alibaba/wireless/security/open/securitybody/ISecurityBodyComponent;->getSecurityBodyDataEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;II)Ljava/lang/String;

    move-result-object v9

    .line 39
    .local v9, "generalWua":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "token = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .end local v0    # "securityBodyComp":Lcom/alibaba/wireless/security/open/securitybody/ISecurityBodyComponent;
    .end local v7    # "applicationContext":Landroid/content/Context;
    .end local v9    # "generalWua":Ljava/lang/String;
    .end local v10    # "manager":Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    :goto_0
    return-object v9

    .line 41
    :catch_0
    move-exception v8

    .line 42
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "get token exception , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-object v9, v11

    .line 44
    goto :goto_0
.end method

.method public static startVerifyUI(Landroid/content/Context;Lc8/NXo;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lc8/NXo;

    .prologue
    .line 50
    :try_start_0
    sget-object v1, Lcom/alibaba/verificationsdk/ui/VerifyType;->NOCAPTCHA:Lcom/alibaba/verificationsdk/ui/VerifyType;

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    new-instance v4, Lc8/UXo;

    invoke-direct {v4, p1}, Lc8/UXo;-><init>(Lc8/NXo;)V

    invoke-static {p0, v1, v2, v3, v4}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->startSimpleVerifyUI(Landroid/content/Context;Lcom/alibaba/verificationsdk/ui/VerifyType;Ljava/lang/String;Ljava/lang/String;Lc8/Vcc;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start verify exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method
