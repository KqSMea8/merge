.class public Lc8/gUi;
.super Ljava/lang/Object;
.source "LBSLocationManagerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/iUi;->doRequestLocationUpdates(Landroid/content/Context;ZLc8/eUi;JJZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/iUi;

.field final synthetic val$isNeedAddress:Z

.field final synthetic val$locationListener:Lc8/eUi;

.field final synthetic val$miniInterval:J

.field final synthetic val$overtime:J


# direct methods
.method constructor <init>(Lc8/iUi;JLc8/eUi;JZ)V
    .locals 0
    .param p1, "this$0"    # Lc8/iUi;

    .prologue
    .line 145
    iput-object p1, p0, Lc8/gUi;->this$0:Lc8/iUi;

    iput-wide p2, p0, Lc8/gUi;->val$miniInterval:J

    iput-object p4, p0, Lc8/gUi;->val$locationListener:Lc8/eUi;

    iput-wide p5, p0, Lc8/gUi;->val$overtime:J

    iput-boolean p7, p0, Lc8/gUi;->val$isNeedAddress:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 149
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 150
    iget-object v6, p0, Lc8/gUi;->this$0:Lc8/iUi;

    iget-object v7, p0, Lc8/gUi;->this$0:Lc8/iUi;

    invoke-static {v7}, Lc8/iUi;->access$000(Lc8/iUi;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Lc8/iUi;->getLastKnownLocation(Landroid/content/Context;)Lcom/youku/lbs/LBSLocation;

    move-result-object v2

    .line 151
    .local v2, "lastLocation":Lcom/youku/lbs/LBSLocation;
    invoke-static {}, Lc8/iUi;->access$100()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "2.doRequestLocationUpdates getLastKnownLocation lastLocation = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lc8/cIo;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2}, Lcom/youku/lbs/LBSLocation;->getLocalTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    iget-wide v8, p0, Lc8/gUi;->val$miniInterval:J

    cmp-long v6, v6, v8

    if-gtz v6, :cond_0

    .line 153
    invoke-static {}, Lc8/iUi;->access$100()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "3.doRequestLocationUpdates getLastKnownLocation timespan = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v2}, Lcom/youku/lbs/LBSLocation;->getLocalTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lc8/cIo;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v6, p0, Lc8/gUi;->val$locationListener:Lc8/eUi;

    invoke-interface {v6, v2}, Lc8/eUi;->onLocationUpdate(Lcom/youku/lbs/LBSLocation;)V

    .line 188
    .end local v2    # "lastLocation":Lcom/youku/lbs/LBSLocation;
    :goto_0
    return-void

    .line 157
    .restart local v2    # "lastLocation":Lcom/youku/lbs/LBSLocation;
    :cond_0
    invoke-static {}, Lc8/iUi;->access$100()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "3.doRequestLocationUpdates start location"

    invoke-static {v6, v7}, Lc8/cIo;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    new-instance v3, Lc8/hUi;

    iget-object v6, p0, Lc8/gUi;->this$0:Lc8/iUi;

    iget-object v7, p0, Lc8/gUi;->val$locationListener:Lc8/eUi;

    iget-wide v8, p0, Lc8/gUi;->val$overtime:J

    invoke-direct {v3, v6, v7, v8, v9}, Lc8/hUi;-><init>(Lc8/iUi;Lc8/eUi;J)V

    .line 159
    .local v3, "listenerWrapper":Lc8/hUi;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v3, v6, v7}, Lc8/hUi;->access$202(Lc8/hUi;J)J

    .line 160
    iget-object v6, p0, Lc8/gUi;->this$0:Lc8/iUi;

    invoke-static {v6}, Lc8/iUi;->access$300(Lc8/iUi;)Ljava/util/Map;

    move-result-object v6

    iget-object v7, p0, Lc8/gUi;->val$locationListener:Lc8/eUi;

    invoke-interface {v6, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const/4 v5, 0x0

    .line 163
    .local v5, "targetWrapper":Lc8/hUi;
    iget-object v6, p0, Lc8/gUi;->this$0:Lc8/iUi;

    invoke-static {v6}, Lc8/iUi;->access$300(Lc8/iUi;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 164
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/youku/lbs/LBSLocationListener;Lcom/youku/lbs/LBSLocationManagerProxy$OnceLocationListenerWrapper;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/hUi;

    .line 166
    .local v4, "onceWrapper":Lc8/hUi;
    invoke-static {v4}, Lc8/hUi;->access$400(Lc8/hUi;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 167
    move-object v5, v4

    .line 172
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/youku/lbs/LBSLocationListener;Lcom/youku/lbs/LBSLocationManagerProxy$OnceLocationListenerWrapper;>;"
    .end local v4    # "onceWrapper":Lc8/hUi;
    :cond_2
    if-nez v5, :cond_3

    .line 173
    iget-boolean v6, p0, Lc8/gUi;->val$isNeedAddress:Z

    invoke-virtual {v3, v6}, Lc8/hUi;->startLocation(Z)V

    .line 178
    :goto_1
    iget-object v6, p0, Lc8/gUi;->this$0:Lc8/iUi;

    invoke-static {v6}, Lc8/iUi;->access$700(Lc8/iUi;)Landroid/os/Handler;

    move-result-object v6

    new-instance v7, Lc8/fUi;

    invoke-direct {v7, p0}, Lc8/fUi;-><init>(Lc8/gUi;)V

    iget-wide v8, p0, Lc8/gUi;->val$overtime:J

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 185
    .end local v2    # "lastLocation":Lcom/youku/lbs/LBSLocation;
    .end local v3    # "listenerWrapper":Lc8/hUi;
    .end local v5    # "targetWrapper":Lc8/hUi;
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lc8/iUi;->access$100()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "2.location error = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lc8/cIo;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 175
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "lastLocation":Lcom/youku/lbs/LBSLocation;
    .restart local v3    # "listenerWrapper":Lc8/hUi;
    .restart local v5    # "targetWrapper":Lc8/hUi;
    :cond_3
    :try_start_1
    invoke-static {}, Lc8/iUi;->access$100()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "4.there is RequestLocationUpdates ING! wait for target: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v5}, Lc8/hUi;->access$500(Lc8/hUi;)Lc8/eUi;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v8}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lc8/cIo;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
