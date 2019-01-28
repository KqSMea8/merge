.class public Lc8/hWb;
.super Ljava/lang/Object;
.source "GodeyeJointPointCenter.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/mWb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GodeyeAppLifecycleCallback"
.end annotation


# instance fields
.field private mActivityCounter:I

.field final synthetic this$0:Lc8/mWb;


# direct methods
.method constructor <init>(Lc8/mWb;)V
    .locals 1

    .prologue
    .line 206
    iput-object p1, p0, Lc8/hWb;->this$0:Lc8/mWb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    const/4 v0, 0x0

    iput v0, p0, Lc8/hWb;->mActivityCounter:I

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 215
    invoke-static {}, Lc8/fWb;->sharedInstance()Lc8/fWb;

    move-result-object v1

    invoke-virtual {v1}, Lc8/fWb;->isDebugMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 221
    :goto_0
    return-void

    .line 219
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onActivityCreated"

    invoke-static {v1, v2}, Lc8/mWb;->access$000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lc8/hWb;->this$0:Lc8/mWb;

    iget-object v1, p0, Lc8/hWb;->this$0:Lc8/mWb;

    invoke-static {v1}, Lc8/mWb;->access$100(Lc8/mWb;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v2, v1}, Lc8/mWb;->access$200(Lc8/mWb;Ljava/util/List;)V

    goto :goto_0
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 290
    invoke-static {}, Lc8/fWb;->sharedInstance()Lc8/fWb;

    move-result-object v1

    invoke-virtual {v1}, Lc8/fWb;->isDebugMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 296
    :goto_0
    return-void

    .line 293
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onActivityDestroyed"

    invoke-static {v1, v2}, Lc8/mWb;->access$000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lc8/hWb;->this$0:Lc8/mWb;

    iget-object v1, p0, Lc8/hWb;->this$0:Lc8/mWb;

    invoke-static {v1}, Lc8/mWb;->access$100(Lc8/mWb;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v2, v1}, Lc8/mWb;->access$200(Lc8/mWb;Ljava/util/List;)V

    .line 295
    invoke-static {}, Lc8/fWb;->sharedInstance()Lc8/fWb;

    move-result-object v1

    new-instance v2, Lc8/WWb;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v0, v4}, Lc8/WWb;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lc8/fWb;->addClientEvent(Lc8/WWb;)V

    goto :goto_0
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 255
    invoke-static {}, Lc8/fWb;->sharedInstance()Lc8/fWb;

    move-result-object v1

    invoke-virtual {v1}, Lc8/fWb;->isDebugMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 262
    :goto_0
    return-void

    .line 259
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onActivityPaused"

    invoke-static {v1, v2}, Lc8/mWb;->access$000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lc8/hWb;->this$0:Lc8/mWb;

    iget-object v1, p0, Lc8/hWb;->this$0:Lc8/mWb;

    invoke-static {v1}, Lc8/mWb;->access$100(Lc8/mWb;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v2, v1}, Lc8/mWb;->access$200(Lc8/mWb;Ljava/util/List;)V

    .line 261
    invoke-static {}, Lc8/fWb;->sharedInstance()Lc8/fWb;

    move-result-object v1

    new-instance v2, Lc8/WWb;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v0, v4}, Lc8/WWb;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lc8/fWb;->addClientEvent(Lc8/WWb;)V

    goto :goto_0
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 242
    invoke-static {}, Lc8/fWb;->sharedInstance()Lc8/fWb;

    move-result-object v2

    invoke-virtual {v2}, Lc8/fWb;->isDebugMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 251
    :goto_0
    return-void

    .line 246
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, "activityName":Ljava/lang/String;
    iget-object v2, p0, Lc8/hWb;->this$0:Lc8/mWb;

    invoke-static {v2, v0}, Lc8/mWb;->access$402(Lc8/mWb;Ljava/lang/String;)Ljava/lang/String;

    .line 248
    const-string/jumbo v2, "onActivityResumed"

    invoke-static {v0, v2}, Lc8/mWb;->access$000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 249
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Lc8/hWb;->this$0:Lc8/mWb;

    iget-object v2, p0, Lc8/hWb;->this$0:Lc8/mWb;

    invoke-static {v2}, Lc8/mWb;->access$100(Lc8/mWb;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v3, v2}, Lc8/mWb;->access$200(Lc8/mWb;Ljava/util/List;)V

    .line 250
    invoke-static {}, Lc8/fWb;->sharedInstance()Lc8/fWb;

    move-result-object v2

    new-instance v3, Lc8/WWb;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v1, v5}, Lc8/WWb;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lc8/fWb;->addClientEvent(Lc8/WWb;)V

    goto :goto_0
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 281
    invoke-static {}, Lc8/fWb;->sharedInstance()Lc8/fWb;

    move-result-object v1

    invoke-virtual {v1}, Lc8/fWb;->isDebugMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 286
    :goto_0
    return-void

    .line 284
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onActivitySaveInstanceState"

    invoke-static {v1, v2}, Lc8/mWb;->access$000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lc8/hWb;->this$0:Lc8/mWb;

    iget-object v1, p0, Lc8/hWb;->this$0:Lc8/mWb;

    invoke-static {v1}, Lc8/mWb;->access$100(Lc8/mWb;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v2, v1}, Lc8/mWb;->access$200(Lc8/mWb;Ljava/util/List;)V

    goto :goto_0
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v6, 0x0

    .line 225
    iget v1, p0, Lc8/hWb;->mActivityCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lc8/hWb;->mActivityCounter:I

    .line 227
    invoke-static {}, Lc8/fWb;->sharedInstance()Lc8/fWb;

    move-result-object v1

    invoke-virtual {v1}, Lc8/fWb;->isDebugMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onActivityStarted"

    invoke-static {v1, v2}, Lc8/mWb;->access$000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lc8/hWb;->this$0:Lc8/mWb;

    iget-object v1, p0, Lc8/hWb;->this$0:Lc8/mWb;

    invoke-static {v1}, Lc8/mWb;->access$100(Lc8/mWb;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v2, v1}, Lc8/mWb;->access$200(Lc8/mWb;Ljava/util/List;)V

    .line 233
    invoke-static {}, Lc8/fWb;->sharedInstance()Lc8/fWb;

    move-result-object v1

    new-instance v2, Lc8/WWb;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, v3, v0, v6}, Lc8/WWb;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lc8/fWb;->addClientEvent(Lc8/WWb;)V

    .line 234
    iget v1, p0, Lc8/hWb;->mActivityCounter:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 235
    iget-object v1, p0, Lc8/hWb;->this$0:Lc8/mWb;

    iget-object v2, p0, Lc8/hWb;->this$0:Lc8/mWb;

    invoke-static {v2}, Lc8/mWb;->access$300(Lc8/mWb;)Ljava/util/Vector;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/mWb;->access$200(Lc8/mWb;Ljava/util/List;)V

    .line 236
    invoke-static {}, Lc8/fWb;->sharedInstance()Lc8/fWb;

    move-result-object v1

    new-instance v2, Lc8/WWb;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string/jumbo v4, "enter_foreground"

    invoke-direct {v2, v3, v4, v6}, Lc8/WWb;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lc8/fWb;->addClientEvent(Lc8/WWb;)V

    goto :goto_0
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v6, 0x0

    .line 266
    iget v1, p0, Lc8/hWb;->mActivityCounter:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lc8/hWb;->mActivityCounter:I

    .line 267
    invoke-static {}, Lc8/fWb;->sharedInstance()Lc8/fWb;

    move-result-object v1

    invoke-virtual {v1}, Lc8/fWb;->isDebugMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onActivityStopped"

    invoke-static {v1, v2}, Lc8/mWb;->access$000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lc8/hWb;->this$0:Lc8/mWb;

    iget-object v1, p0, Lc8/hWb;->this$0:Lc8/mWb;

    invoke-static {v1}, Lc8/mWb;->access$100(Lc8/mWb;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v2, v1}, Lc8/mWb;->access$200(Lc8/mWb;Ljava/util/List;)V

    .line 272
    invoke-static {}, Lc8/fWb;->sharedInstance()Lc8/fWb;

    move-result-object v1

    new-instance v2, Lc8/WWb;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, v3, v0, v6}, Lc8/WWb;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lc8/fWb;->addClientEvent(Lc8/WWb;)V

    .line 273
    iget v1, p0, Lc8/hWb;->mActivityCounter:I

    if-nez v1, :cond_0

    .line 274
    iget-object v1, p0, Lc8/hWb;->this$0:Lc8/mWb;

    iget-object v2, p0, Lc8/hWb;->this$0:Lc8/mWb;

    invoke-static {v2}, Lc8/mWb;->access$500(Lc8/mWb;)Ljava/util/Vector;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/mWb;->access$200(Lc8/mWb;Ljava/util/List;)V

    .line 275
    invoke-static {}, Lc8/fWb;->sharedInstance()Lc8/fWb;

    move-result-object v1

    new-instance v2, Lc8/WWb;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string/jumbo v4, "enter_background"

    invoke-direct {v2, v3, v4, v6}, Lc8/WWb;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lc8/fWb;->addClientEvent(Lc8/WWb;)V

    goto :goto_0
.end method
