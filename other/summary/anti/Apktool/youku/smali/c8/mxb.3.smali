.class public Lc8/mxb;
.super Ljava/lang/Object;
.source "NetworkTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/nxb;->onStatisticDataReceived(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/nxb;

.field final synthetic val$statisticData:Ljava/util/Map;


# direct methods
.method constructor <init>(Lc8/nxb;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$0"    # Lc8/nxb;

    .prologue
    .line 231
    iput-object p1, p0, Lc8/mxb;->this$0:Lc8/nxb;

    iput-object p2, p0, Lc8/mxb;->val$statisticData:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 234
    iget-object v0, p0, Lc8/mxb;->val$statisticData:Ljava/util/Map;

    const-string/jumbo v1, "requestTime"

    iget-object v2, p0, Lc8/mxb;->this$0:Lc8/nxb;

    invoke-static {v2}, Lc8/nxb;->access$600(Lc8/nxb;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iget-object v0, p0, Lc8/mxb;->this$0:Lc8/nxb;

    invoke-static {v0}, Lc8/nxb;->access$300(Lc8/nxb;)Lc8/Twb;

    move-result-object v0

    iget-object v1, p0, Lc8/mxb;->val$statisticData:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lc8/Twb;->setTiming(Ljava/util/Map;)V

    .line 236
    return-void
.end method
