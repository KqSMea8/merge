.class public abstract Lc8/nMp;
.super Ljava/lang/Object;
.source "AsyncServiceBinder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "mtopsdk.AsyncServiceBinder"


# instance fields
.field private conn:Landroid/content/ServiceConnection;

.field private interfaceCls:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Landroid/os/IInterface;",
            ">;"
        }
    .end annotation
.end field

.field private interfaceName:Ljava/lang/String;

.field private final lock:[B

.field private volatile mBindFailed:Z

.field private volatile mBinding:Z

.field protected volatile service:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private serviceCls:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Service;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/os/IInterface;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Service;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lc8/nMp;, "Lmtopsdk/common/util/AsyncServiceBinder<TT;>;"
    .local p1, "interfaceCls":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/os/IInterface;>;"
    .local p2, "serviceCls":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Service;>;"
    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/nMp;->service:Landroid/os/IInterface;

    .line 27
    new-array v0, v1, [B

    iput-object v0, p0, Lc8/nMp;->lock:[B

    .line 31
    iput-boolean v1, p0, Lc8/nMp;->mBindFailed:Z

    .line 35
    iput-boolean v1, p0, Lc8/nMp;->mBinding:Z

    .line 38
    new-instance v0, Lc8/mMp;

    invoke-direct {v0, p0}, Lc8/mMp;-><init>(Lc8/nMp;)V

    iput-object v0, p0, Lc8/nMp;->conn:Landroid/content/ServiceConnection;

    .line 91
    iput-object p1, p0, Lc8/nMp;->interfaceCls:Ljava/lang/Class;

    .line 92
    iput-object p2, p0, Lc8/nMp;->serviceCls:Ljava/lang/Class;

    .line 93
    return-void
.end method

.method static synthetic access$000(Lc8/nMp;)[B
    .locals 1
    .param p0, "x0"    # Lc8/nMp;

    .prologue
    .line 21
    iget-object v0, p0, Lc8/nMp;->lock:[B

    return-object v0
.end method

.method static synthetic access$100(Lc8/nMp;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/nMp;

    .prologue
    .line 21
    iget-object v0, p0, Lc8/nMp;->interfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lc8/nMp;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lc8/nMp;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lc8/nMp;->interfaceName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lc8/nMp;)Ljava/lang/Class;
    .locals 1
    .param p0, "x0"    # Lc8/nMp;

    .prologue
    .line 21
    iget-object v0, p0, Lc8/nMp;->interfaceCls:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$302(Lc8/nMp;Z)Z
    .locals 0
    .param p0, "x0"    # Lc8/nMp;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    iput-boolean p1, p0, Lc8/nMp;->mBinding:Z

    return p1
.end method

.method static synthetic access$400(Lc8/nMp;)Z
    .locals 1
    .param p0, "x0"    # Lc8/nMp;

    .prologue
    .line 21
    iget-boolean v0, p0, Lc8/nMp;->mBindFailed:Z

    return v0
.end method

.method static synthetic access$402(Lc8/nMp;Z)Z
    .locals 0
    .param p0, "x0"    # Lc8/nMp;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    iput-boolean p1, p0, Lc8/nMp;->mBindFailed:Z

    return p1
.end method


# virtual methods
.method protected abstract afterAsyncBind()V
.end method

.method public asyncBind(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x4
    .end annotation

    .prologue
    .local p0, "this":Lc8/nMp;, "Lmtopsdk/common/util/AsyncServiceBinder<TT;>;"
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 97
    iget-object v3, p0, Lc8/nMp;->service:Landroid/os/IInterface;

    if-eqz v3, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    if-eqz p1, :cond_0

    .line 104
    iget-boolean v3, p0, Lc8/nMp;->mBindFailed:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lc8/nMp;->mBinding:Z

    if-nez v3, :cond_0

    .line 107
    sget-object v3, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v3}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 108
    const-string/jumbo v3, "mtopsdk.AsyncServiceBinder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[asyncBind] mContext="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ",mBindFailed= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lc8/nMp;->mBindFailed:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ",mBinding="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lc8/nMp;->mBinding:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_2
    iput-boolean v4, p0, Lc8/nMp;->mBinding:Z

    .line 112
    :try_start_0
    iget-object v3, p0, Lc8/nMp;->interfaceName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 113
    iget-object v3, p0, Lc8/nMp;->interfaceCls:Ljava/lang/Class;

    invoke-static {v3}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lc8/nMp;->interfaceName:Ljava/lang/String;

    .line 115
    :cond_3
    sget-object v3, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v3}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 116
    const-string/jumbo v3, "mtopsdk.AsyncServiceBinder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[asyncBind]try to bind service for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lc8/nMp;->interfaceName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_4
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v6, p0, Lc8/nMp;->serviceCls:Ljava/lang/Class;

    invoke-direct {v1, v3, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 119
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lc8/nMp;->interfaceCls:Ljava/lang/Class;

    invoke-static {v3}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    const-string/jumbo v3, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    iget-object v3, p0, Lc8/nMp;->conn:Landroid/content/ServiceConnection;

    const/4 v6, 0x1

    invoke-virtual {p1, v1, v3, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    .line 123
    .local v2, "ret":Z
    sget-object v3, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v3}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 124
    const-string/jumbo v3, "mtopsdk.AsyncServiceBinder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[asyncBind]use intent bind service ret="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " for interfaceName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lc8/nMp;->interfaceName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_5
    if-nez v2, :cond_6

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lc8/nMp;->mBindFailed:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "ret":Z
    :goto_2
    iget-boolean v3, p0, Lc8/nMp;->mBindFailed:Z

    if-eqz v3, :cond_0

    .line 133
    iput-boolean v5, p0, Lc8/nMp;->mBinding:Z

    goto/16 :goto_0

    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "ret":Z
    :cond_6
    move v3, v5

    .line 126
    goto :goto_1

    .line 127
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "ret":Z
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/Throwable;
    iput-boolean v4, p0, Lc8/nMp;->mBindFailed:Z

    .line 129
    const-string/jumbo v3, "mtopsdk.AsyncServiceBinder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[asyncBind] use intent bind service failed. mBindFailed="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v6, p0, Lc8/nMp;->mBindFailed:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ",interfaceName = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lc8/nMp;->interfaceName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public getService()Landroid/os/IInterface;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 140
    .local p0, "this":Lc8/nMp;, "Lmtopsdk/common/util/AsyncServiceBinder<TT;>;"
    iget-object v0, p0, Lc8/nMp;->service:Landroid/os/IInterface;

    return-object v0
.end method
