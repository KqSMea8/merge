.class public Lc8/TWf;
.super Ljava/lang/Object;
.source "WXBridgeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/UWf;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/UWf;

.field final synthetic val$totalTime:J


# direct methods
.method constructor <init>(Lc8/UWf;J)V
    .locals 0

    .prologue
    .line 1396
    iput-object p1, p0, Lc8/TWf;->this$1:Lc8/UWf;

    iput-wide p2, p0, Lc8/TWf;->val$totalTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1400
    iget-object v0, p0, Lc8/TWf;->this$1:Lc8/UWf;

    iget-object v0, v0, Lc8/UWf;->val$instance:Lc8/nVf;

    iget-wide v2, p0, Lc8/TWf;->val$totalTime:J

    invoke-virtual {v0, v2, v3}, Lc8/nVf;->createInstanceFinished(J)V

    .line 1401
    return-void
.end method
