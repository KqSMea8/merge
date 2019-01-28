.class public Lc8/FXb;
.super Ljava/lang/Object;
.source "ConfigMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/DXb;,
        Lc8/EXb;
    }
.end annotation


# static fields
.field public static final CONFIG_SET_KEY:Ljava/lang/String; = "layer_manager_config"

.field public static final DEFAULT_KEY:Ljava/lang/String; = "default"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private initialize:Z

.field mBizConfigMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/BXb;",
            ">;"
        }
    .end annotation
.end field

.field private mMgrAdapter:Lc8/oXb;

.field private mUpdateTask:Lc8/EXb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lc8/FXb;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/FXb;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lc8/oXb;)V
    .locals 1
    .param p1, "mgrAdapter"    # Lc8/oXb;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/FXb;->initialize:Z

    .line 49
    iput-object p1, p0, Lc8/FXb;->mMgrAdapter:Lc8/oXb;

    .line 50
    return-void
.end method

.method static synthetic access$100(Lc8/FXb;)Lc8/oXb;
    .locals 1
    .param p0, "x0"    # Lc8/FXb;

    .prologue
    .line 28
    iget-object v0, p0, Lc8/FXb;->mMgrAdapter:Lc8/oXb;

    return-object v0
.end method


# virtual methods
.method public getBizConfig(Ljava/lang/String;)Lc8/BXb;
    .locals 5
    .param p1, "biz"    # Ljava/lang/String;

    .prologue
    .line 58
    iget-object v3, p0, Lc8/FXb;->mBizConfigMap:Ljava/util/Map;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lc8/FXb;->mBizConfigMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 59
    :cond_0
    const/4 v3, 0x0

    .line 71
    :goto_0
    return-object v3

    .line 61
    :cond_1
    iget-object v3, p0, Lc8/FXb;->mBizConfigMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 62
    .local v0, "bizKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 66
    .local v1, "bizkey":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 67
    iget-object v3, p0, Lc8/FXb;->mBizConfigMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/BXb;

    goto :goto_0

    .line 71
    .end local v1    # "bizkey":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lc8/FXb;->mBizConfigMap:Ljava/util/Map;

    const-string/jumbo v4, "default"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/BXb;

    goto :goto_0
.end method

.method public isConfigInit()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lc8/FXb;->initialize:Z

    return v0
.end method

.method protected onConfigChanged(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/BXb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, "bizConfigMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/poplayer/layermanager/config/BizConfig;>;"
    invoke-static {}, Lc8/uXb;->instance()Lc8/uXb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/uXb;->updateCurBizConfig()V

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/FXb;->initialize:Z

    .line 90
    return-void
.end method

.method public updateConfig()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lc8/FXb;->mUpdateTask:Lc8/EXb;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    iget-object v1, p0, Lc8/FXb;->mUpdateTask:Lc8/EXb;

    invoke-virtual {v1}, Lc8/EXb;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 79
    iget-object v0, p0, Lc8/FXb;->mUpdateTask:Lc8/EXb;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc8/EXb;->cancel(Z)Z

    .line 80
    :cond_0
    new-instance v0, Lc8/EXb;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc8/EXb;-><init>(Lc8/FXb;Lc8/DXb;)V

    iput-object v0, p0, Lc8/FXb;->mUpdateTask:Lc8/EXb;

    .line 81
    iget-object v0, p0, Lc8/FXb;->mUpdateTask:Lc8/EXb;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lc8/EXb;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 82
    return-void
.end method
