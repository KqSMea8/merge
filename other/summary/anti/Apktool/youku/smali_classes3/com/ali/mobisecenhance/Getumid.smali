.class public Lcom/ali/mobisecenhance/Getumid;
.super Ljava/lang/Object;
.source "Getumid.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String;

.field protected static m_context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gez v0, :cond_0

    const-class v0, La/does/not/Exists2;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .prologue
    .line 16
    :cond_0
    const-class v0, Lcom/ali/mobisecenhance/ReflectMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ali/mobisecenhance/Getumid;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sput-object p1, Lcom/ali/mobisecenhance/Getumid;->m_context:Landroid/content/Context;

    .line 22
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/ali/mobisecenhance/Getumid;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static umidSample2(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    const/4 v3, 0x0

    .line 28
    .local v3, "umidComponent":Lcom/alibaba/wireless/security/open/umid/IUMIDComponent;
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v2

    .line 29
    .local v2, "sgManager":Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    invoke-virtual {v2}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getUMIDComp()Lcom/alibaba/wireless/security/open/umid/IUMIDComponent;
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 35
    if-eqz v3, :cond_0

    .line 36
    move-object v1, v3

    .line 38
    .local v1, "finalUmidComponent":Lcom/alibaba/wireless/security/open/umid/IUMIDComponent;
    const/4 v4, 0x0

    :try_start_1
    new-instance v5, Lcom/ali/mobisecenhance/Getumid$1;

    invoke-direct {v5}, Lcom/ali/mobisecenhance/Getumid$1;-><init>()V

    invoke-interface {v1, v4, v5}, Lcom/alibaba/wireless/security/open/umid/IUMIDComponent;->initUMID(ILcom/alibaba/wireless/security/open/umid/IUMIDInitListenerEx;)V
    :try_end_1
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_1 .. :try_end_1} :catch_1

    .line 52
    .end local v1    # "finalUmidComponent":Lcom/alibaba/wireless/security/open/umid/IUMIDComponent;
    .end local v2    # "sgManager":Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    :cond_0
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, "e":Lcom/alibaba/wireless/security/open/SecException;
    sget-object v4, Lcom/ali/mobisecenhance/Getumid;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SecurityGuardManager.getInstance(context) Error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecException;->getErrorCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 47
    .end local v0    # "e":Lcom/alibaba/wireless/security/open/SecException;
    .restart local v1    # "finalUmidComponent":Lcom/alibaba/wireless/security/open/umid/IUMIDComponent;
    .restart local v2    # "sgManager":Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    :catch_1
    move-exception v0

    .line 48
    .restart local v0    # "e":Lcom/alibaba/wireless/security/open/SecException;
    sget-object v4, Lcom/ali/mobisecenhance/Getumid;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "umidComponent.registerInitListener Error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecException;->getErrorCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 56
    const-wide/16 v0, 0x7530

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 57
    sget-object v0, Lcom/ali/mobisecenhance/Getumid;->m_context:Landroid/content/Context;

    invoke-static {v0}, Lcom/ali/mobisecenhance/Getumid;->umidSample2(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    goto :goto_0
.end method
