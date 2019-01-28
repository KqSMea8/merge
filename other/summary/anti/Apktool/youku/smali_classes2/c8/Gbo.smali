.class public Lc8/Gbo;
.super Ljava/lang/Object;
.source "PageRecyclerViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Hbo;->onLoadComplete(Ljava/util/List;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Hbo;

.field final synthetic val$result:Ljava/util/List;

.field final synthetic val$throwable:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lc8/Hbo;Ljava/util/List;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Hbo;

    .prologue
    .line 302
    .local p0, "this":Lc8/Gbo;, "Lcom/youku/us/baseuikit/stream/PageRecyclerViewFragment$2;"
    iput-object p1, p0, Lc8/Gbo;->this$0:Lc8/Hbo;

    iput-object p2, p0, Lc8/Gbo;->val$result:Ljava/util/List;

    iput-object p3, p0, Lc8/Gbo;->val$throwable:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 305
    .local p0, "this":Lc8/Gbo;, "Lcom/youku/us/baseuikit/stream/PageRecyclerViewFragment$2;"
    iget-object v0, p0, Lc8/Gbo;->this$0:Lc8/Hbo;

    iget-object v1, p0, Lc8/Gbo;->val$result:Ljava/util/List;

    iget-object v2, p0, Lc8/Gbo;->val$throwable:Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2}, Lc8/Hbo;->fillData(Ljava/util/List;Ljava/lang/Throwable;)V

    .line 306
    return-void
.end method
