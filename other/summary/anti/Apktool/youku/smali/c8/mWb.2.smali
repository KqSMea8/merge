.class public Lc8/mWb;
.super Ljava/lang/Object;
.source "GodeyeJointPointCenter.java"

# interfaces
.implements Lc8/pWb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/kWb;,
        Lc8/jWb;,
        Lc8/gWb;,
        Lc8/lWb;,
        Lc8/iWb;,
        Lc8/hWb;
    }
.end annotation


# instance fields
.field private lastVisitedPage:Ljava/lang/String;

.field private mActivityLifecycleJointPointHandlers:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lc8/oWb;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mApplication:Landroid/app/Application;

.field private mCustomEventJointPointHandlers:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lc8/oWb;",
            ">;>;"
        }
    .end annotation
.end field

.field private mEnterBackgroundJointPointHandlers:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lc8/oWb;",
            ">;"
        }
    .end annotation
.end field

.field private mEnterForegroundJointPointHandlers:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lc8/oWb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/app/Application;)V
    .locals 2
    .param p1, "context"    # Landroid/app/Application;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lc8/mWb;->mActivityLifecycleJointPointHandlers:Ljava/util/concurrent/ConcurrentHashMap;

    .line 44
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lc8/mWb;->mEnterBackgroundJointPointHandlers:Ljava/util/Vector;

    .line 49
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lc8/mWb;->mEnterForegroundJointPointHandlers:Ljava/util/Vector;

    .line 55
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lc8/mWb;->mCustomEventJointPointHandlers:Ljava/util/concurrent/ConcurrentHashMap;

    .line 60
    iput-object p1, p0, Lc8/mWb;->mApplication:Landroid/app/Application;

    .line 61
    iget-object v0, p0, Lc8/mWb;->mApplication:Landroid/app/Application;

    new-instance v1, Lc8/hWb;

    invoke-direct {v1, p0}, Lc8/hWb;-><init>(Lc8/mWb;)V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 62
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-static {p0, p1}, Lc8/mWb;->buildLifecycleKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lc8/mWb;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lc8/mWb;

    .prologue
    .line 31
    iget-object v0, p0, Lc8/mWb;->mActivityLifecycleJointPointHandlers:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$200(Lc8/mWb;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lc8/mWb;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lc8/mWb;->executeAndClearCallbacks(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300(Lc8/mWb;)Ljava/util/Vector;
    .locals 1
    .param p0, "x0"    # Lc8/mWb;

    .prologue
    .line 31
    iget-object v0, p0, Lc8/mWb;->mEnterForegroundJointPointHandlers:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$402(Lc8/mWb;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lc8/mWb;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lc8/mWb;->lastVisitedPage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lc8/mWb;)Ljava/util/Vector;
    .locals 1
    .param p0, "x0"    # Lc8/mWb;

    .prologue
    .line 31
    iget-object v0, p0, Lc8/mWb;->mEnterBackgroundJointPointHandlers:Ljava/util/Vector;

    return-object v0
.end method

.method private static buildLifecycleKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "activityName"    # Ljava/lang/String;
    .param p1, "lifecycleMethod"    # Ljava/lang/String;

    .prologue
    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private executeAndClearCallbacks(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/oWb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 191
    .local p1, "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/mtl/godeye/client/control/IGodeyeJointPointCenter$GodeyeJointPointCallback;>;"
    if-eqz p1, :cond_1

    .line 192
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 193
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/oWb;

    .line 194
    .local v0, "callback":Lc8/oWb;
    invoke-virtual {v0}, Lc8/oWb;->doCallback()V

    .line 195
    invoke-virtual {v0}, Lc8/oWb;->isDisposable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 196
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 192
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 200
    .end local v0    # "callback":Lc8/oWb;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private installStartJointPoint(Lcom/alibaba/mtl/godeye/control/jointpoint/JointPoint;Lc8/oWb;Z)V
    .locals 4
    .param p1, "start"    # Lcom/alibaba/mtl/godeye/control/jointpoint/JointPoint;
    .param p2, "jointPointCallback"    # Lc8/oWb;
    .param p3, "isColdStart"    # Z

    .prologue
    .line 336
    if-eqz p3, :cond_1

    instance-of v2, p1, Lcom/alibaba/mtl/godeye/control/jointpoint/StartupJointPoint;

    if-eqz v2, :cond_1

    .line 337
    invoke-virtual {p2}, Lc8/oWb;->doCallback()V

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    instance-of v2, p1, Lcom/alibaba/mtl/godeye/control/jointpoint/LifecycleJointPoint;

    if-eqz v2, :cond_2

    move-object v1, p1

    .line 343
    check-cast v1, Lcom/alibaba/mtl/godeye/control/jointpoint/LifecycleJointPoint;

    .line 344
    .local v1, "jointPoint":Lcom/alibaba/mtl/godeye/control/jointpoint/LifecycleJointPoint;
    invoke-virtual {v1}, Lcom/alibaba/mtl/godeye/control/jointpoint/LifecycleJointPoint;->getActivity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/alibaba/mtl/godeye/control/jointpoint/LifecycleJointPoint;->getLifecycleMethod()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3, p2}, Lc8/mWb;->registerActivityLifecycleCallbackHandler(Ljava/lang/String;Ljava/lang/String;Lc8/oWb;)V

    goto :goto_0

    .line 349
    .end local v1    # "jointPoint":Lcom/alibaba/mtl/godeye/control/jointpoint/LifecycleJointPoint;
    :cond_2
    instance-of v2, p1, Lcom/alibaba/mtl/godeye/control/jointpoint/NotificationJointPoint;

    if-eqz v2, :cond_3

    move-object v1, p1

    .line 350
    check-cast v1, Lcom/alibaba/mtl/godeye/control/jointpoint/NotificationJointPoint;

    .line 351
    .local v1, "jointPoint":Lcom/alibaba/mtl/godeye/control/jointpoint/NotificationJointPoint;
    invoke-virtual {v1}, Lcom/alibaba/mtl/godeye/control/jointpoint/NotificationJointPoint;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lc8/mWb;->registerBroadcastHandler(Ljava/lang/String;Lc8/oWb;)V

    goto :goto_0

    .line 356
    .end local v1    # "jointPoint":Lcom/alibaba/mtl/godeye/control/jointpoint/NotificationJointPoint;
    :cond_3
    instance-of v2, p1, Lcom/alibaba/mtl/godeye/control/jointpoint/EnterBackgroundJointPoint;

    if-eqz v2, :cond_4

    .line 357
    invoke-direct {p0, p2}, Lc8/mWb;->registerEnterBackgroundCallbackHandler(Lc8/oWb;)V

    goto :goto_0

    .line 362
    :cond_4
    instance-of v2, p1, Lcom/alibaba/mtl/godeye/control/jointpoint/EnterForegroundJointPoint;

    if-eqz v2, :cond_5

    .line 363
    invoke-direct {p0, p2}, Lc8/mWb;->registerEnterForegroundCallbackHandler(Lc8/oWb;)V

    goto :goto_0

    .line 368
    :cond_5
    instance-of v2, p1, Lcom/alibaba/mtl/godeye/control/jointpoint/CustomEventJointPoint;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 369
    check-cast v0, Lcom/alibaba/mtl/godeye/control/jointpoint/CustomEventJointPoint;

    .line 370
    .local v0, "customEventJointPoint":Lcom/alibaba/mtl/godeye/control/jointpoint/CustomEventJointPoint;
    invoke-virtual {v0}, Lcom/alibaba/mtl/godeye/control/jointpoint/CustomEventJointPoint;->getEventName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lc8/mWb;->registerCustomEventHandler(Ljava/lang/String;Lc8/oWb;)V

    goto :goto_0
.end method

.method private installStopJointPoint(Lcom/alibaba/mtl/godeye/control/jointpoint/JointPoint;Lc8/oWb;)V
    .locals 4
    .param p1, "stop"    # Lcom/alibaba/mtl/godeye/control/jointpoint/JointPoint;
    .param p2, "jointPointCallback"    # Lc8/oWb;

    .prologue
    .line 380
    instance-of v2, p1, Lcom/alibaba/mtl/godeye/control/jointpoint/LifecycleJointPoint;

    if-eqz v2, :cond_1

    move-object v1, p1

    .line 381
    check-cast v1, Lcom/alibaba/mtl/godeye/control/jointpoint/LifecycleJointPoint;

    .line 382
    .local v1, "jointPoint":Lcom/alibaba/mtl/godeye/control/jointpoint/LifecycleJointPoint;
    invoke-virtual {v1}, Lcom/alibaba/mtl/godeye/control/jointpoint/LifecycleJointPoint;->getActivity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/alibaba/mtl/godeye/control/jointpoint/LifecycleJointPoint;->getLifecycleMethod()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3, p2}, Lc8/mWb;->registerActivityLifecycleCallbackHandler(Ljava/lang/String;Ljava/lang/String;Lc8/oWb;)V

    .line 412
    .end local v1    # "jointPoint":Lcom/alibaba/mtl/godeye/control/jointpoint/LifecycleJointPoint;
    :cond_0
    :goto_0
    return-void

    .line 387
    :cond_1
    instance-of v2, p1, Lcom/alibaba/mtl/godeye/control/jointpoint/NotificationJointPoint;

    if-eqz v2, :cond_2

    move-object v1, p1

    .line 388
    check-cast v1, Lcom/alibaba/mtl/godeye/control/jointpoint/NotificationJointPoint;

    .line 389
    .local v1, "jointPoint":Lcom/alibaba/mtl/godeye/control/jointpoint/NotificationJointPoint;
    invoke-virtual {v1}, Lcom/alibaba/mtl/godeye/control/jointpoint/NotificationJointPoint;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lc8/mWb;->registerBroadcastHandler(Ljava/lang/String;Lc8/oWb;)V

    goto :goto_0

    .line 394
    .end local v1    # "jointPoint":Lcom/alibaba/mtl/godeye/control/jointpoint/NotificationJointPoint;
    :cond_2
    instance-of v2, p1, Lcom/alibaba/mtl/godeye/control/jointpoint/EnterBackgroundJointPoint;

    if-eqz v2, :cond_3

    .line 395
    invoke-direct {p0, p2}, Lc8/mWb;->registerEnterBackgroundCallbackHandler(Lc8/oWb;)V

    goto :goto_0

    .line 400
    :cond_3
    instance-of v2, p1, Lcom/alibaba/mtl/godeye/control/jointpoint/EnterForegroundJointPoint;

    if-eqz v2, :cond_4

    .line 401
    invoke-direct {p0, p2}, Lc8/mWb;->registerEnterForegroundCallbackHandler(Lc8/oWb;)V

    goto :goto_0

    .line 406
    :cond_4
    instance-of v2, p1, Lcom/alibaba/mtl/godeye/control/jointpoint/CustomEventJointPoint;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 407
    check-cast v0, Lcom/alibaba/mtl/godeye/control/jointpoint/CustomEventJointPoint;

    .line 408
    .local v0, "customEventJointPoint":Lcom/alibaba/mtl/godeye/control/jointpoint/CustomEventJointPoint;
    invoke-virtual {v0}, Lcom/alibaba/mtl/godeye/control/jointpoint/CustomEventJointPoint;->getEventName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lc8/mWb;->registerCustomEventHandler(Ljava/lang/String;Lc8/oWb;)V

    goto :goto_0
.end method

.method private registerActivityLifecycleCallbackHandler(Ljava/lang/String;Ljava/lang/String;Lc8/oWb;)V
    .locals 3
    .param p1, "activityName"    # Ljava/lang/String;
    .param p2, "lifecycleMethod"    # Ljava/lang/String;
    .param p3, "godeyeJointPointCallback"    # Lc8/oWb;

    .prologue
    .line 137
    invoke-static {p1, p2}, Lc8/mWb;->buildLifecycleKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lc8/mWb;->mActivityLifecycleJointPointHandlers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 139
    .local v0, "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/mtl/godeye/client/control/IGodeyeJointPointCenter$GodeyeJointPointCallback;>;"
    if-eqz v0, :cond_0

    .line 140
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    :goto_0
    return-void

    .line 142
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/mtl/godeye/client/control/IGodeyeJointPointCenter$GodeyeJointPointCallback;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .restart local v0    # "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/mtl/godeye/client/control/IGodeyeJointPointCenter$GodeyeJointPointCallback;>;"
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v2, p0, Lc8/mWb;->mActivityLifecycleJointPointHandlers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private registerBroadcastHandler(Ljava/lang/String;Lc8/oWb;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "godeyeJointPointCallback"    # Lc8/oWb;

    .prologue
    .line 167
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 168
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    invoke-virtual {v1, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    new-instance v0, Lc8/iWb;

    iget-object v2, p0, Lc8/mWb;->mApplication:Landroid/app/Application;

    invoke-direct {v0, v2, p2}, Lc8/iWb;-><init>(Landroid/content/Context;Lc8/oWb;)V

    .line 171
    .local v0, "broadcastReceiver":Lc8/iWb;
    iget-object v2, p0, Lc8/mWb;->mApplication:Landroid/app/Application;

    invoke-virtual {v2, v0, v1}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 172
    return-void
.end method

.method private registerCustomEventHandler(Ljava/lang/String;Lc8/oWb;)V
    .locals 2
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "godeyeJointPointCallback"    # Lc8/oWb;

    .prologue
    .line 175
    iget-object v1, p0, Lc8/mWb;->mCustomEventJointPointHandlers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 176
    .local v0, "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/mtl/godeye/client/control/IGodeyeJointPointCenter$GodeyeJointPointCallback;>;"
    if-eqz v0, :cond_0

    .line 177
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    :goto_0
    return-void

    .line 179
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/mtl/godeye/client/control/IGodeyeJointPointCenter$GodeyeJointPointCallback;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .restart local v0    # "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/mtl/godeye/client/control/IGodeyeJointPointCenter$GodeyeJointPointCallback;>;"
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    iget-object v1, p0, Lc8/mWb;->mCustomEventJointPointHandlers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private registerEnterBackgroundCallbackHandler(Lc8/oWb;)V
    .locals 1
    .param p1, "godeyeJointPointCallback"    # Lc8/oWb;

    .prologue
    .line 152
    iget-object v0, p0, Lc8/mWb;->mEnterBackgroundJointPointHandlers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 153
    return-void
.end method

.method private registerEnterForegroundCallbackHandler(Lc8/oWb;)V
    .locals 1
    .param p1, "godeyeJointPointCallback"    # Lc8/oWb;

    .prologue
    .line 159
    iget-object v0, p0, Lc8/mWb;->mEnterForegroundJointPointHandlers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 160
    return-void
.end method


# virtual methods
.method public getLastVisitedPage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lc8/mWb;->lastVisitedPage:Ljava/lang/String;

    return-object v0
.end method

.method public installJointPoints(Lcom/alibaba/mtl/godeye/control/jointpoint/JointPoint;Lc8/oWb;Lcom/alibaba/mtl/godeye/control/jointpoint/JointPoint;Lc8/oWb;Z)V
    .locals 8
    .param p1, "start"    # Lcom/alibaba/mtl/godeye/control/jointpoint/JointPoint;
    .param p2, "startJointPointCallback"    # Lc8/oWb;
    .param p3, "stop"    # Lcom/alibaba/mtl/godeye/control/jointpoint/JointPoint;
    .param p4, "stopJointPointCallback"    # Lc8/oWb;
    .param p5, "isColdStart"    # Z

    .prologue
    .line 79
    const/4 v0, 0x0

    .line 80
    .local v0, "delayStop":Z
    const-wide/16 v2, -0x1

    .line 81
    .local v2, "delayStopMilliSeconds":J
    instance-of v6, p3, Lcom/alibaba/mtl/godeye/control/jointpoint/TimerJointPoint;

    if-eqz v6, :cond_0

    move-object v1, p3

    .line 82
    check-cast v1, Lcom/alibaba/mtl/godeye/control/jointpoint/TimerJointPoint;

    .line 83
    .local v1, "jointPoint":Lcom/alibaba/mtl/godeye/control/jointpoint/TimerJointPoint;
    const/4 v0, 0x1

    .line 84
    invoke-virtual {v1}, Lcom/alibaba/mtl/godeye/control/jointpoint/TimerJointPoint;->getWaitMilliseconds()I

    move-result v6

    int-to-long v2, v6

    .line 88
    .end local v1    # "jointPoint":Lcom/alibaba/mtl/godeye/control/jointpoint/TimerJointPoint;
    :cond_0
    new-instance v4, Lc8/jWb;

    invoke-direct {v4, p2}, Lc8/jWb;-><init>(Lc8/oWb;)V

    .line 89
    .end local p2    # "startJointPointCallback":Lc8/oWb;
    .local v4, "startJointPointCallback":Lc8/oWb;
    new-instance v5, Lc8/kWb;

    invoke-direct {v5, p4}, Lc8/kWb;-><init>(Lc8/oWb;)V

    .line 91
    .end local p4    # "stopJointPointCallback":Lc8/oWb;
    .local v5, "stopJointPointCallback":Lc8/oWb;
    if-eqz v0, :cond_1

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_1

    .line 92
    new-instance v6, Lc8/lWb;

    invoke-direct {v6, v2, v3, v4, v5}, Lc8/lWb;-><init>(JLc8/oWb;Lc8/oWb;)V

    invoke-direct {p0, p1, v6, p5}, Lc8/mWb;->installStartJointPoint(Lcom/alibaba/mtl/godeye/control/jointpoint/JointPoint;Lc8/oWb;Z)V

    .line 100
    :cond_1
    if-nez v0, :cond_2

    .line 101
    invoke-direct {p0, p1, v4, p5}, Lc8/mWb;->installStartJointPoint(Lcom/alibaba/mtl/godeye/control/jointpoint/JointPoint;Lc8/oWb;Z)V

    .line 102
    invoke-direct {p0, p3, v5}, Lc8/mWb;->installStopJointPoint(Lcom/alibaba/mtl/godeye/control/jointpoint/JointPoint;Lc8/oWb;)V

    .line 104
    :cond_2
    return-void
.end method

.method public invokeCustomEventJointPointHandlersIfExist(Ljava/lang/String;)V
    .locals 4
    .param p1, "eventName"    # Ljava/lang/String;

    .prologue
    .line 112
    invoke-static {}, Lc8/fWb;->sharedInstance()Lc8/fWb;

    move-result-object v3

    invoke-virtual {v3}, Lc8/fWb;->isDebugMode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 123
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v3, p0, Lc8/mWb;->mCustomEventJointPointHandlers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 117
    .local v1, "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/mtl/godeye/client/control/IGodeyeJointPointCenter$GodeyeJointPointCallback;>;"
    if-eqz v1, :cond_1

    .line 118
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/oWb;

    .line 119
    .local v0, "callback":Lc8/oWb;
    invoke-virtual {v0}, Lc8/oWb;->doCallback()V

    goto :goto_1

    .line 122
    .end local v0    # "callback":Lc8/oWb;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v3, p0, Lc8/mWb;->mCustomEventJointPointHandlers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
