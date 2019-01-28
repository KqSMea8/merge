.class public Lc8/UWf;
.super Ljava/lang/Object;
.source "WXBridgeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/ZWf;->createInstance(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/ZWf;

.field final synthetic val$data:Ljava/lang/String;

.field final synthetic val$instance:Lc8/nVf;

.field final synthetic val$options:Ljava/util/Map;

.field final synthetic val$template:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/ZWf;Lc8/nVf;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1390
    iput-object p1, p0, Lc8/UWf;->this$0:Lc8/ZWf;

    iput-object p2, p0, Lc8/UWf;->val$instance:Lc8/nVf;

    iput-object p3, p0, Lc8/UWf;->val$template:Ljava/lang/String;

    iput-object p4, p0, Lc8/UWf;->val$options:Ljava/util/Map;

    iput-object p5, p0, Lc8/UWf;->val$data:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 1393
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1394
    .local v0, "start":J
    iget-object v4, p0, Lc8/UWf;->this$0:Lc8/ZWf;

    iget-object v5, p0, Lc8/UWf;->val$instance:Lc8/nVf;

    iget-object v6, p0, Lc8/UWf;->val$template:Ljava/lang/String;

    iget-object v7, p0, Lc8/UWf;->val$options:Ljava/util/Map;

    iget-object v8, p0, Lc8/UWf;->val$data:Ljava/lang/String;

    invoke-static {v4, v5, v6, v7, v8}, Lc8/ZWf;->access$300(Lc8/ZWf;Lc8/nVf;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 1395
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v0

    .line 1396
    .local v2, "totalTime":J
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v4

    new-instance v5, Lc8/TWf;

    invoke-direct {v5, p0, v2, v3}, Lc8/TWf;-><init>(Lc8/UWf;J)V

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lc8/pVf;->postOnUiThread(Ljava/lang/Runnable;J)V

    .line 1403
    return-void
.end method
