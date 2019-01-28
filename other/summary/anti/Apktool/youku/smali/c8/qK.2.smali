.class public Lc8/qK;
.super Ljava/lang/Object;
.source "HttpSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/tK;->connect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/tK;

.field final synthetic val$request:Lc8/eK;


# direct methods
.method constructor <init>(Lc8/tK;Lc8/eK;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lc8/qK;->this$0:Lc8/tK;

    iput-object p2, p0, Lc8/qK;->val$request:Lc8/eK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 70
    .local v2, "start":J
    iget-object v4, p0, Lc8/qK;->val$request:Lc8/eK;

    invoke-static {v4}, Lc8/pK;->connect(Lc8/eK;)Lc8/oK;

    move-result-object v1

    .line 71
    .local v1, "response":Lc8/oK;
    iget v4, v1, Lc8/oK;->httpCode:I

    if-lez v4, :cond_0

    .line 72
    new-instance v0, Lc8/CJ;

    sget-object v4, Lanet/channel/entity/EventType;->CONNECTED:Lanet/channel/entity/EventType;

    invoke-direct {v0, v4}, Lc8/CJ;-><init>(Lanet/channel/entity/EventType;)V

    .line 73
    .local v0, "event":Lc8/CJ;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    iput-wide v4, v0, Lc8/CJ;->mConnectedTime:J

    .line 74
    iget-object v4, p0, Lc8/qK;->this$0:Lc8/tK;

    sget-object v5, Lanet/channel/Session$Status;->AUTH_SUCC:Lanet/channel/Session$Status;

    invoke-static {v4, v5, v0}, Lc8/tK;->access$000(Lc8/tK;Lanet/channel/Session$Status;Lc8/EJ;)V

    .line 78
    .end local v0    # "event":Lc8/CJ;
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v4, p0, Lc8/qK;->this$0:Lc8/tK;

    sget-object v5, Lanet/channel/entity/EventType;->CONNECT_FAIL:Lanet/channel/entity/EventType;

    new-instance v6, Lc8/EJ;

    sget-object v7, Lanet/channel/entity/EventType;->CONNECT_FAIL:Lanet/channel/entity/EventType;

    iget v8, v1, Lc8/oK;->httpCode:I

    const-string/jumbo v9, "Http connect fail"

    invoke-direct {v6, v7, v8, v9}, Lc8/EJ;-><init>(Lanet/channel/entity/EventType;ILjava/lang/String;)V

    invoke-static {v4, v5, v6}, Lc8/tK;->access$100(Lc8/tK;Lanet/channel/entity/EventType;Lc8/EJ;)V

    goto :goto_0
.end method
