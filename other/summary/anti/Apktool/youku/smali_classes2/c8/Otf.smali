.class public Lc8/Otf;
.super Ljava/lang/Object;
.source "DefaultEncrypt.java"

# interfaces
.implements Lc8/Ptf;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultEncrypt"

.field private static mSecurityGuardValid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    sput-boolean v1, Lc8/Otf;->mSecurityGuardValid:Z

    .line 25
    :try_start_0
    const-string/jumbo v0, "com.alibaba.wireless.security.open.SecurityGuardManager"

    invoke-static {v0}, Lc8/Otf;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 26
    const/4 v0, 0x1

    sput-boolean v0, Lc8/Otf;->mSecurityGuardValid:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :goto_0
    return-void

    .line 28
    :catch_0
    move-exception v0

    sput-boolean v1, Lc8/Otf;->mSecurityGuardValid:Z

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _1forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    invoke-static/range {p0 .. p0}, Lcom/ali/mobisecenhance/ReflectMap;->genRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public sign(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appkey"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "authCode"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x0

    .line 34
    if-eqz p1, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 35
    :cond_0
    const-string/jumbo v6, "DefaultEncrypt"

    const-string/jumbo v7, "sign"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const-string/jumbo v9, "data or appkey is null"

    aput-object v9, v8, v10

    invoke-static {v6, v7, v8}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    :goto_0
    return-object v5

    .line 38
    :cond_1
    sget-boolean v6, Lc8/Otf;->mSecurityGuardValid:Z

    if-nez v6, :cond_2

    .line 39
    const-string/jumbo v6, "DefaultEncrypt"

    const-string/jumbo v7, "no security guard exist"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 42
    :cond_2
    const/4 v3, 0x0

    .line 44
    .local v3, "sgMgr":Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 48
    :goto_1
    if-nez v3, :cond_3

    .line 49
    const-string/jumbo v6, "DefaultEncrypt"

    const-string/jumbo v7, "get SecurityGuardManager null"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Lcom/alibaba/wireless/security/open/SecException;
    const-string/jumbo v6, "DefaultEncrypt"

    const-string/jumbo v7, "sign"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v6, v7, v0, v8}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1

    .line 53
    .end local v0    # "e":Lcom/alibaba/wireless/security/open/SecException;
    :cond_3
    invoke-virtual {v3}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getSecureSignatureComp()Lcom/alibaba/wireless/security/open/securesignature/ISecureSignatureComponent;

    move-result-object v4

    .line 54
    .local v4, "signComp":Lcom/alibaba/wireless/security/open/securesignature/ISecureSignatureComponent;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 55
    .local v2, "paramMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v6, "INPUT"

    invoke-virtual {v2, v6, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    new-instance v1, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;

    invoke-direct {v1}, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;-><init>()V

    .line 57
    .local v1, "paramContext":Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;
    iput-object p2, v1, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->appKey:Ljava/lang/String;

    .line 58
    iput-object v2, v1, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->paramMap:Ljava/util/Map;

    .line 59
    const/4 v6, 0x3

    iput v6, v1, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->requestType:I

    .line 61
    const/4 v5, 0x0

    .line 63
    .local v5, "signValue":Ljava/lang/String;
    :try_start_1
    invoke-interface {v4, v1, p4}, Lcom/alibaba/wireless/security/open/securesignature/ISecureSignatureComponent;->signRequest(Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    goto :goto_0

    .line 64
    :catch_1
    move-exception v0

    .line 65
    .restart local v0    # "e":Lcom/alibaba/wireless/security/open/SecException;
    const-string/jumbo v6, "DefaultEncrypt"

    const-string/jumbo v7, "sign"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v6, v7, v0, v8}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method
