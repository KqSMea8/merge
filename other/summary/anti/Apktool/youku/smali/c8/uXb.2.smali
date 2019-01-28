.class public Lc8/uXb;
.super Ljava/lang/Object;
.source "LayerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/tXb;,
        Lc8/sXb;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;

.field public static sAllowPopOnParentActivity:Z

.field private static sLayerManager:Lc8/uXb;


# instance fields
.field private mAppCVM:Lc8/nXb;

.field private mConfigMgr:Lc8/FXb;

.field private mCurrentActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentBizConfig:Lc8/BXb;

.field private mLayerMgrAdapter:Lc8/oXb;

.field mQuery:Lc8/sXb;

.field mUpdate:Lc8/tXb;

.field private mWaittingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lc8/yXb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lc8/uXb;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/uXb;->TAG:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Lc8/uXb;->sAllowPopOnParentActivity:Z

    return-void
.end method

.method public constructor <init>(Lc8/oXb;)V
    .locals 2
    .param p1, "mgrAdapter"    # Lc8/oXb;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lc8/sXb;

    invoke-direct {v0, p0}, Lc8/sXb;-><init>(Lc8/uXb;)V

    iput-object v0, p0, Lc8/uXb;->mQuery:Lc8/sXb;

    .line 53
    new-instance v0, Lc8/tXb;

    invoke-direct {v0, p0}, Lc8/tXb;-><init>(Lc8/uXb;)V

    iput-object v0, p0, Lc8/uXb;->mUpdate:Lc8/tXb;

    .line 60
    iput-object p1, p0, Lc8/uXb;->mLayerMgrAdapter:Lc8/oXb;

    .line 61
    new-instance v0, Lc8/FXb;

    iget-object v1, p0, Lc8/uXb;->mLayerMgrAdapter:Lc8/oXb;

    invoke-direct {v0, v1}, Lc8/FXb;-><init>(Lc8/oXb;)V

    iput-object v0, p0, Lc8/uXb;->mConfigMgr:Lc8/FXb;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/uXb;->mWaittingList:Ljava/util/ArrayList;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lc8/uXb;)Lc8/nXb;
    .locals 1
    .param p0, "x0"    # Lc8/uXb;

    .prologue
    .line 32
    iget-object v0, p0, Lc8/uXb;->mAppCVM:Lc8/nXb;

    return-object v0
.end method

.method private getCurrentActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lc8/uXb;->mCurrentActivityRef:Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Lcom/alibaba/poplayer/utils/Utils;->getObjectFromWeak(Ljava/lang/ref/WeakReference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public static instance()Lc8/uXb;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lc8/uXb;->sLayerManager:Lc8/uXb;

    return-object v0
.end method

.method private removeAdjustRequests(Ljava/util/ArrayList;)Lc8/GXb;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<+",
            "Lc8/yXb;",
            ">;)",
            "Lc8/GXb",
            "<",
            "Lc8/nXb;",
            "Lc8/yXb;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/poplayer/exception/PoplayerException;
        }
    .end annotation

    .prologue
    .local p1, "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Lcom/alibaba/poplayer/layermanager/PopRequest;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 265
    new-instance v3, Lc8/GXb;

    invoke-direct {v3}, Lc8/GXb;-><init>()V

    .line 267
    .local v3, "res":Lc8/GXb;, "Lcom/alibaba/poplayer/layermanager/util/HashArrayMap<Lcom/alibaba/poplayer/layermanager/ICVMHolderAction;Lcom/alibaba/poplayer/layermanager/PopRequest;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/yXb;

    .line 269
    .local v2, "request":Lc8/yXb;
    iget-object v4, p0, Lc8/uXb;->mWaittingList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lc8/uXb;->mWaittingList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 270
    iget-object v4, p0, Lc8/uXb;->mWaittingList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 274
    :cond_0
    invoke-virtual {v2}, Lc8/yXb;->getStatus()Lcom/alibaba/poplayer/layermanager/PopRequest$Status;

    move-result-object v4

    sget-object v5, Lcom/alibaba/poplayer/layermanager/PopRequest$Status;->REMOVED:Lcom/alibaba/poplayer/layermanager/PopRequest$Status;

    if-ne v4, v5, :cond_1

    .line 276
    const-string/jumbo v4, "%s.removeAdjustRequests=> but status = remove"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 280
    :cond_1
    invoke-virtual {v2}, Lc8/yXb;->getPopParam()Lc8/wXb;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lc8/yXb;->getPopParam()Lc8/wXb;

    move-result-object v4

    instance-of v4, v4, Lc8/pXb;

    if-nez v4, :cond_3

    .line 282
    :cond_2
    const-string/jumbo v4, "%s.removeAdjustRequests=> but popParam is empty or but InnerPopParam"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 288
    :cond_3
    iget-object v4, p0, Lc8/uXb;->mQuery:Lc8/sXb;

    invoke-virtual {v4, v2}, Lc8/sXb;->findCanvasViewModel(Lc8/yXb;)Lc8/nXb;

    move-result-object v1

    .local v1, "matchVM":Lc8/nXb;
    if-nez v1, :cond_4

    .line 290
    const-string/jumbo v4, "%s.removeAdjustRequests=> find canvas view model fail."

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 293
    :cond_4
    invoke-virtual {v3, v1, v2}, Lc8/GXb;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 295
    .end local v1    # "matchVM":Lc8/nXb;
    .end local v2    # "request":Lc8/yXb;
    :cond_5
    return-object v3
.end method

.method private resetViewModels(Landroid/app/Activity;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 174
    iget-object v2, p0, Lc8/uXb;->mAppCVM:Lc8/nXb;

    if-nez v2, :cond_0

    .line 175
    new-instance v2, Lc8/lXb;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-direct {v2, v5}, Lc8/lXb;-><init>(Landroid/app/Application;)V

    iput-object v2, p0, Lc8/uXb;->mAppCVM:Lc8/nXb;

    .line 176
    :cond_0
    iget-object v2, p0, Lc8/uXb;->mAppCVM:Lc8/nXb;

    invoke-interface {v2, p1}, Lc8/nXb;->attach(Landroid/app/Activity;)V

    .line 179
    iget-object v2, p0, Lc8/uXb;->mQuery:Lc8/sXb;

    invoke-virtual {v2, p1}, Lc8/sXb;->findPageCVMIfExist(Landroid/app/Activity;)Lc8/vXb;

    move-result-object v0

    .line 180
    .local v0, "pageCVM":Lc8/nXb;
    const-string/jumbo v5, "%s.resetViewModels: find pageVM : %s."

    new-array v6, v7, [Ljava/lang/Object;

    sget-object v2, Lc8/uXb;->TAG:Ljava/lang/String;

    aput-object v2, v6, v4

    if-eqz v0, :cond_4

    move v2, v3

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v6, v3

    invoke-static {v5, v6}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    if-nez v0, :cond_1

    .line 183
    new-instance v0, Lc8/vXb;

    .end local v0    # "pageCVM":Lc8/nXb;
    invoke-direct {v0, p0, p1}, Lc8/vXb;-><init>(Lc8/uXb;Landroid/app/Activity;)V

    .line 184
    .restart local v0    # "pageCVM":Lc8/nXb;
    iget-object v2, p0, Lc8/uXb;->mUpdate:Lc8/tXb;

    sget v5, Lcom/youku/phone/R$id;->layermanager_viewmodel_page_id:I

    invoke-virtual {v2, p1, v0, v5}, Lc8/tXb;->bindCVM(Landroid/app/Activity;Lc8/nXb;I)V

    .line 186
    :cond_1
    invoke-interface {v0, p1}, Lc8/nXb;->attach(Landroid/app/Activity;)V

    .line 189
    iget-object v2, p0, Lc8/uXb;->mQuery:Lc8/sXb;

    invoke-virtual {v2, p1}, Lc8/sXb;->findViewCVMIfExist(Landroid/app/Activity;)Lc8/zXb;

    move-result-object v1

    .line 190
    .local v1, "viewCVM":Lc8/nXb;
    const-string/jumbo v2, "%s.resetViewModels: find viewsVM : %s."

    new-array v5, v7, [Ljava/lang/Object;

    sget-object v6, Lc8/uXb;->TAG:Ljava/lang/String;

    aput-object v6, v5, v4

    if-eqz v1, :cond_2

    move v4, v3

    :cond_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v5, v3

    invoke-static {v2, v5}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    if-nez v1, :cond_3

    .line 193
    new-instance v1, Lc8/zXb;

    .end local v1    # "viewCVM":Lc8/nXb;
    invoke-direct {v1, p0, p1}, Lc8/zXb;-><init>(Lc8/uXb;Landroid/app/Activity;)V

    .line 194
    .restart local v1    # "viewCVM":Lc8/nXb;
    iget-object v2, p0, Lc8/uXb;->mUpdate:Lc8/tXb;

    sget v3, Lcom/youku/phone/R$id;->layermanager_viewmodel_view_id:I

    invoke-virtual {v2, p1, v1, v3}, Lc8/tXb;->bindCVM(Landroid/app/Activity;Lc8/nXb;I)V

    .line 196
    :cond_3
    invoke-interface {v1, p1}, Lc8/nXb;->attach(Landroid/app/Activity;)V

    .line 198
    return-void

    .end local v1    # "viewCVM":Lc8/nXb;
    :cond_4
    move v2, v4

    .line 180
    goto :goto_0
.end method

.method private tryAdjustRequests(Ljava/util/ArrayList;)Lc8/GXb;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<+",
            "Lc8/yXb;",
            ">;)",
            "Lc8/GXb",
            "<",
            "Lc8/nXb;",
            "Lc8/yXb;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/poplayer/exception/PoplayerException;
        }
    .end annotation

    .prologue
    .local p1, "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Lcom/alibaba/poplayer/layermanager/PopRequest;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 227
    new-instance v4, Lc8/GXb;

    invoke-direct {v4}, Lc8/GXb;-><init>()V

    .line 229
    .local v4, "res":Lc8/GXb;, "Lcom/alibaba/poplayer/layermanager/util/HashArrayMap<Lcom/alibaba/poplayer/layermanager/ICVMHolderAction;Lcom/alibaba/poplayer/layermanager/PopRequest;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/yXb;

    .line 232
    .local v3, "request":Lc8/yXb;
    invoke-virtual {v3}, Lc8/yXb;->getStatus()Lcom/alibaba/poplayer/layermanager/PopRequest$Status;

    move-result-object v5

    sget-object v6, Lcom/alibaba/poplayer/layermanager/PopRequest$Status;->WAITTING:Lcom/alibaba/poplayer/layermanager/PopRequest$Status;

    if-eq v5, v6, :cond_0

    invoke-virtual {v3}, Lc8/yXb;->getStatus()Lcom/alibaba/poplayer/layermanager/PopRequest$Status;

    move-result-object v5

    sget-object v6, Lcom/alibaba/poplayer/layermanager/PopRequest$Status;->REMOVED:Lcom/alibaba/poplayer/layermanager/PopRequest$Status;

    if-eq v5, v6, :cond_0

    .line 235
    const-string/jumbo v5, "%s.tryAdjustRequests=> add but status not in (waitting or removed)"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 240
    :cond_0
    iget-object v5, p0, Lc8/uXb;->mCurrentBizConfig:Lc8/BXb;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lc8/uXb;->mCurrentBizConfig:Lc8/BXb;

    invoke-virtual {v3}, Lc8/yXb;->getLayerType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lc8/BXb;->findConfig(Ljava/lang/String;)Lc8/CXb;

    move-result-object v0

    .local v0, "configItem":Lc8/CXb;
    if-nez v0, :cond_2

    .line 241
    .end local v0    # "configItem":Lc8/CXb;
    :cond_1
    const-string/jumbo v5, "%s.tryAdjustRequests.not find ConfigRule,use default."

    new-array v6, v9, [Ljava/lang/Object;

    sget-object v7, Lc8/uXb;->TAG:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    new-instance v0, Lc8/CXb;

    invoke-direct {v0}, Lc8/CXb;-><init>()V

    .line 246
    .restart local v0    # "configItem":Lc8/CXb;
    :cond_2
    iget-object v5, p0, Lc8/uXb;->mQuery:Lc8/sXb;

    invoke-virtual {v5, v3}, Lc8/sXb;->findCanvasViewModel(Lc8/yXb;)Lc8/nXb;

    move-result-object v2

    .local v2, "matchVM":Lc8/nXb;
    if-nez v2, :cond_3

    .line 248
    const-string/jumbo v5, "%s.tryAdjustRequests=> find canvas view model fail."

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 253
    :cond_3
    invoke-virtual {v3}, Lc8/yXb;->getPopParam()Lc8/wXb;

    move-result-object v5

    instance-of v5, v5, Lc8/pXb;

    if-nez v5, :cond_4

    .line 254
    new-instance v5, Lc8/pXb;

    invoke-virtual {v3}, Lc8/yXb;->getPopParam()Lc8/wXb;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Lc8/pXb;-><init>(Lc8/wXb;Lc8/CXb;)V

    invoke-virtual {v3, v5}, Lc8/yXb;->setPopParam(Lc8/wXb;)V

    .line 257
    :cond_4
    sget-object v5, Lcom/alibaba/poplayer/layermanager/PopRequest$Status;->WAITTING:Lcom/alibaba/poplayer/layermanager/PopRequest$Status;

    invoke-virtual {v3, v5}, Lc8/yXb;->setStatus(Lcom/alibaba/poplayer/layermanager/PopRequest$Status;)V

    .line 258
    invoke-virtual {v4, v2, v3}, Lc8/GXb;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 260
    .end local v0    # "configItem":Lc8/CXb;
    .end local v2    # "matchVM":Lc8/nXb;
    .end local v3    # "request":Lc8/yXb;
    :cond_5
    return-object v4
.end method


# virtual methods
.method public add(Lc8/yXb;)V
    .locals 5
    .param p1, "request"    # Lc8/yXb;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 112
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 113
    new-instance v1, Lcom/alibaba/poplayer/exception/PoplayerException;

    const-string/jumbo v2, "Please execute on UI Thread."

    invoke-direct {v1, v2}, Lcom/alibaba/poplayer/exception/PoplayerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 115
    :cond_0
    invoke-virtual {p1}, Lc8/yXb;->getStatus()Lcom/alibaba/poplayer/layermanager/PopRequest$Status;

    move-result-object v1

    sget-object v2, Lcom/alibaba/poplayer/layermanager/PopRequest$Status;->WAITTING:Lcom/alibaba/poplayer/layermanager/PopRequest$Status;

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Lc8/yXb;->getStatus()Lcom/alibaba/poplayer/layermanager/PopRequest$Status;

    move-result-object v1

    sget-object v2, Lcom/alibaba/poplayer/layermanager/PopRequest$Status;->REMOVED:Lcom/alibaba/poplayer/layermanager/PopRequest$Status;

    if-ne v1, v2, :cond_2

    .line 118
    :cond_1
    const-string/jumbo v1, "%s.viewReadyNotify=> add but status = waitting or removed."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    :goto_0
    return-void

    .line 122
    :cond_2
    invoke-virtual {p1}, Lc8/yXb;->getPopParam()Lc8/wXb;

    move-result-object v1

    instance-of v1, v1, Lc8/pXb;

    if-nez v1, :cond_3

    .line 124
    const-string/jumbo v1, "%s.viewReadyNotify=> add but popParam not InnerPopParam"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 127
    :cond_3
    invoke-virtual {p1}, Lc8/yXb;->getLayer()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_4

    .line 128
    const-string/jumbo v1, "%s.viewReadyNotify=>layer is empty."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 131
    :cond_4
    iget-object v1, p0, Lc8/uXb;->mQuery:Lc8/sXb;

    invoke-virtual {v1, p1}, Lc8/sXb;->findCanvasViewModel(Lc8/yXb;)Lc8/nXb;

    move-result-object v0

    .line 132
    .local v0, "cvm":Lc8/nXb;
    invoke-interface {v0, p1}, Lc8/nXb;->viewReadyNotify(Lc8/yXb;)V

    goto :goto_0
.end method

.method public getPageViewContainerTemp()Lc8/PXb;
    .locals 2

    .prologue
    .line 303
    iget-object v1, p0, Lc8/uXb;->mQuery:Lc8/sXb;

    iget-object v0, p0, Lc8/uXb;->mCurrentActivityRef:Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Lcom/alibaba/poplayer/utils/Utils;->getObjectFromWeak(Ljava/lang/ref/WeakReference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Lc8/sXb;->findContainerIfExist(Landroid/app/Activity;)Lc8/PXb;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/app/Application;)V
    .locals 1
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 76
    sget-object v0, Lc8/uXb;->sLayerManager:Lc8/uXb;

    if-nez v0, :cond_0

    .line 77
    sput-object p0, Lc8/uXb;->sLayerManager:Lc8/uXb;

    .line 80
    :cond_0
    iget-object v0, p0, Lc8/uXb;->mLayerMgrAdapter:Lc8/oXb;

    invoke-interface {v0, p0}, Lc8/oXb;->initializeConfigContainer(Lc8/uXb;)V

    .line 81
    iget-object v0, p0, Lc8/uXb;->mLayerMgrAdapter:Lc8/oXb;

    invoke-interface {v0, p0}, Lc8/oXb;->addConfigObserver(Lc8/uXb;)V

    .line 83
    invoke-virtual {p0}, Lc8/uXb;->updateConfig()V

    .line 84
    return-void
.end method

.method public remove(Lc8/yXb;)V
    .locals 1
    .param p1, "request"    # Lc8/yXb;

    .prologue
    .line 145
    if-nez p1, :cond_0

    .line 151
    :goto_0
    return-void

    .line 148
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v0, "reqs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/poplayer/layermanager/PopRequest;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    invoke-virtual {p0, v0}, Lc8/uXb;->remove(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public remove(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lc8/yXb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p1, "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/poplayer/layermanager/PopRequest;>;"
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    if-eq v3, v4, :cond_0

    .line 137
    new-instance v3, Lcom/alibaba/poplayer/exception/PoplayerException;

    const-string/jumbo v4, "Please execute on UI Thread."

    invoke-direct {v3, v4}, Lcom/alibaba/poplayer/exception/PoplayerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 139
    :cond_0
    invoke-direct {p0, p1}, Lc8/uXb;->removeAdjustRequests(Ljava/util/ArrayList;)Lc8/GXb;

    move-result-object v1

    .line 140
    .local v1, "res":Lc8/GXb;, "Lcom/alibaba/poplayer/layermanager/util/HashArrayMap<Lcom/alibaba/poplayer/layermanager/ICVMHolderAction;Lcom/alibaba/poplayer/layermanager/PopRequest;>;"
    invoke-virtual {v1}, Lc8/GXb;->getHashMap()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/nXb;

    .line 141
    .local v2, "vm":Lc8/nXb;
    invoke-virtual {v1, v2}, Lc8/GXb;->get(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v2, v3}, Lc8/nXb;->removeRequests(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 143
    .end local v2    # "vm":Lc8/nXb;
    :cond_1
    return-void
.end method

.method public touchActivity(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "keyCode"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 162
    invoke-static {}, Lcom/alibaba/poplayer/PopLayer;->getReference()Lcom/alibaba/poplayer/PopLayer;

    move-result-object v0

    invoke-direct {p0}, Lc8/uXb;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/poplayer/PopLayer;->isSamePage(Landroid/app/Activity;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    const-string/jumbo v0, "%s.touchActivity.is same page."

    new-array v1, v4, [Ljava/lang/Object;

    sget-object v2, Lc8/uXb;->TAG:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    :goto_0
    return-void

    .line 166
    :cond_0
    invoke-direct {p0, p1}, Lc8/uXb;->resetViewModels(Landroid/app/Activity;)V

    .line 167
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc8/uXb;->mCurrentActivityRef:Ljava/lang/ref/WeakReference;

    .line 168
    const-string/jumbo v0, "%s.currentActivity is: %s."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lc8/uXb;->TAG:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    invoke-virtual {p0}, Lc8/uXb;->updateCurBizConfig()V

    goto :goto_0
.end method

.method public tryOpen(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<+",
            "Lc8/yXb;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/poplayer/exception/PoplayerException;
        }
    .end annotation

    .prologue
    .line 93
    .local p1, "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Lcom/alibaba/poplayer/layermanager/PopRequest;>;"
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    if-eq v3, v4, :cond_0

    .line 94
    new-instance v3, Lcom/alibaba/poplayer/exception/PoplayerException;

    const-string/jumbo v4, "Please execute on UI Thread."

    invoke-direct {v3, v4}, Lcom/alibaba/poplayer/exception/PoplayerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 96
    :cond_0
    iget-object v3, p0, Lc8/uXb;->mConfigMgr:Lc8/FXb;

    invoke-virtual {v3}, Lc8/FXb;->isConfigInit()Z

    move-result v3

    if-nez v3, :cond_2

    .line 97
    const-string/jumbo v3, "%s.tryOpen,but LayerMgr`configs not ready.Saving"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Lc8/uXb;->TAG:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    iget-object v3, p0, Lc8/uXb;->mWaittingList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 108
    :cond_1
    return-void

    .line 103
    :cond_2
    invoke-direct {p0, p1}, Lc8/uXb;->tryAdjustRequests(Ljava/util/ArrayList;)Lc8/GXb;

    move-result-object v1

    .line 105
    .local v1, "res":Lc8/GXb;, "Lcom/alibaba/poplayer/layermanager/util/HashArrayMap<Lcom/alibaba/poplayer/layermanager/ICVMHolderAction;Lcom/alibaba/poplayer/layermanager/PopRequest;>;"
    invoke-virtual {v1}, Lc8/GXb;->getHashMap()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/nXb;

    .line 106
    .local v2, "vm":Lc8/nXb;
    invoke-virtual {v1, v2}, Lc8/GXb;->get(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v2, v3}, Lc8/nXb;->acceptRequests(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public updateConfig()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lc8/uXb;->mConfigMgr:Lc8/FXb;

    invoke-virtual {v0}, Lc8/FXb;->updateConfig()V

    .line 158
    return-void
.end method

.method public updateCurBizConfig()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 202
    invoke-direct {p0}, Lc8/uXb;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 203
    iget-object v0, p0, Lc8/uXb;->mConfigMgr:Lc8/FXb;

    invoke-direct {p0}, Lc8/uXb;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/FXb;->getBizConfig(Ljava/lang/String;)Lc8/BXb;

    move-result-object v0

    iput-object v0, p0, Lc8/uXb;->mCurrentBizConfig:Lc8/BXb;

    .line 204
    const-string/jumbo v1, "%s.update BizConfig: %s."

    new-array v2, v5, [Ljava/lang/Object;

    sget-object v0, Lc8/uXb;->TAG:Ljava/lang/String;

    aput-object v0, v2, v3

    iget-object v0, p0, Lc8/uXb;->mCurrentBizConfig:Lc8/BXb;

    if-nez v0, :cond_1

    const-string/jumbo v0, "empty"

    :goto_0
    aput-object v0, v2, v4

    invoke-static {v1, v2}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    :goto_1
    iget-object v0, p0, Lc8/uXb;->mWaittingList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    const-string/jumbo v0, "%s.config update. deal waitting list ,size:{%s}."

    new-array v1, v5, [Ljava/lang/Object;

    sget-object v2, Lc8/uXb;->TAG:Ljava/lang/String;

    aput-object v2, v1, v3

    iget-object v2, p0, Lc8/uXb;->mWaittingList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    iget-object v0, p0, Lc8/uXb;->mWaittingList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lc8/uXb;->tryOpen(Ljava/util/ArrayList;)V

    .line 212
    iget-object v0, p0, Lc8/uXb;->mWaittingList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 215
    :cond_0
    return-void

    .line 204
    :cond_1
    iget-object v0, p0, Lc8/uXb;->mCurrentBizConfig:Lc8/BXb;

    invoke-virtual {v0}, Lc8/BXb;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 206
    :cond_2
    const-string/jumbo v0, "%s.currentActivity is empty.updateBizConfig fail."

    new-array v1, v4, [Ljava/lang/Object;

    sget-object v2, Lc8/uXb;->TAG:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method
