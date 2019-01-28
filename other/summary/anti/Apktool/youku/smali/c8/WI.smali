.class public Lc8/WI;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanet/channel/Session;->handleCallbacks(Lanet/channel/entity/EventType;Lc8/EJ;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lanet/channel/Session;

.field final synthetic val$event:Lc8/EJ;

.field final synthetic val$eventType:Lanet/channel/entity/EventType;


# direct methods
.method public constructor <init>(Lanet/channel/Session;Lanet/channel/entity/EventType;Lc8/EJ;)V
    .locals 0
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 240
    iput-object p1, p0, Lc8/WI;->this$0:Lanet/channel/Session;

    iput-object p2, p0, Lc8/WI;->val$eventType:Lanet/channel/entity/EventType;

    iput-object p3, p0, Lc8/WI;->val$event:Lc8/EJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 244
    :try_start_0
    iget-object v4, p0, Lc8/WI;->this$0:Lanet/channel/Session;

    iget-object v4, v4, Lanet/channel/Session;->mEventCallBacks:Ljava/util/Map;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lc8/WI;->val$eventType:Lanet/channel/entity/EventType;

    if-eqz v4, :cond_1

    .line 245
    iget-object v4, p0, Lc8/WI;->this$0:Lanet/channel/Session;

    iget-object v4, v4, Lanet/channel/Session;->mEventCallBacks:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/FJ;

    .line 246
    .local v0, "callback":Lc8/FJ;
    if-eqz v0, :cond_0

    .line 247
    iget-object v4, p0, Lc8/WI;->this$0:Lanet/channel/Session;

    iget-object v4, v4, Lanet/channel/Session;->mEventCallBacks:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 248
    .local v3, "value":I
    iget-object v4, p0, Lc8/WI;->val$eventType:Lanet/channel/entity/EventType;

    invoke-virtual {v4}, Lanet/channel/entity/EventType;->getType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    and-int/2addr v4, v3

    if-eqz v4, :cond_0

    .line 250
    :try_start_1
    iget-object v4, p0, Lc8/WI;->this$0:Lanet/channel/Session;

    iget-object v5, p0, Lc8/WI;->val$eventType:Lanet/channel/entity/EventType;

    iget-object v6, p0, Lc8/WI;->val$event:Lc8/EJ;

    invoke-interface {v0, v4, v5, v6}, Lc8/FJ;->onEvent(Lanet/channel/Session;Lanet/channel/entity/EventType;Lc8/EJ;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 251
    :catch_0
    move-exception v1

    .line 252
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v4, "awcn.Session"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lc8/WI;->this$0:Lanet/channel/Session;

    iget-object v6, v6, Lanet/channel/Session;->mSeq:Ljava/lang/String;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6, v7}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 259
    .end local v0    # "callback":Lc8/FJ;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "value":I
    :catch_1
    move-exception v1

    .line 260
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v4, "awcn.Session"

    const-string/jumbo v5, "handleCallbacks"

    iget-object v6, p0, Lc8/WI;->this$0:Lanet/channel/Session;

    iget-object v6, v6, Lanet/channel/Session;->mSeq:Ljava/lang/String;

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v4, v5, v6, v1, v7}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 262
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method
