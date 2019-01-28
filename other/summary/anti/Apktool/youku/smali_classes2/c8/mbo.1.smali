.class public Lc8/mbo;
.super Ljava/lang/Object;
.source "ARecycleViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/nbo;->onLoadComplete(Ljava/util/List;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/nbo;

.field final synthetic val$result:Ljava/util/List;

.field final synthetic val$throwable:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lc8/nbo;Ljava/util/List;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "this$0"    # Lc8/nbo;

    .prologue
    .line 415
    .local p0, "this":Lc8/mbo;, "Lcom/youku/us/baseuikit/fragment/ARecycleViewFragment$2;"
    iput-object p1, p0, Lc8/mbo;->this$0:Lc8/nbo;

    iput-object p2, p0, Lc8/mbo;->val$result:Ljava/util/List;

    iput-object p3, p0, Lc8/mbo;->val$throwable:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 418
    .local p0, "this":Lc8/mbo;, "Lcom/youku/us/baseuikit/fragment/ARecycleViewFragment$2;"
    iget-object v0, p0, Lc8/mbo;->this$0:Lc8/nbo;

    iget-object v1, p0, Lc8/mbo;->val$result:Ljava/util/List;

    iget-object v2, p0, Lc8/mbo;->val$throwable:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Lc8/nbo;->access$000(Lc8/nbo;Ljava/util/List;Ljava/lang/Throwable;)V

    .line 419
    return-void
.end method
