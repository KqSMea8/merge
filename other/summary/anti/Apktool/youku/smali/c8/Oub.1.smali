.class public Lc8/Oub;
.super Ljava/lang/Object;
.source "PrefetchManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Pub;->queueIdle()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lc8/Pub;


# direct methods
.method constructor <init>(Lc8/Pub;)V
    .locals 0
    .param p1, "this$2"    # Lc8/Pub;

    .prologue
    .line 177
    iput-object p1, p0, Lc8/Oub;->this$2:Lc8/Pub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 180
    iget-object v0, p0, Lc8/Oub;->this$2:Lc8/Pub;

    iget-object v0, v0, Lc8/Pub;->this$1:Lc8/Rub;

    iget-object v0, v0, Lc8/Rub;->this$0:Lc8/bvb;

    iget-object v1, p0, Lc8/Oub;->this$2:Lc8/Pub;

    iget-object v1, v1, Lc8/Pub;->this$1:Lc8/Rub;

    iget-object v1, v1, Lc8/Rub;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lc8/Oub;->this$2:Lc8/Pub;

    iget-object v2, v2, Lc8/Pub;->this$1:Lc8/Rub;

    iget-object v2, v2, Lc8/Rub;->val$ignoreParams:Ljava/util/List;

    iget-object v3, p0, Lc8/Oub;->this$2:Lc8/Pub;

    iget-object v3, v3, Lc8/Pub;->this$1:Lc8/Rub;

    iget-object v3, v3, Lc8/Rub;->val$instanceId:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lc8/bvb;->access$100(Lc8/bvb;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 181
    return-void
.end method
