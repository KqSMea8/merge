.class public Lc8/lbo;
.super Lc8/Cv;
.source "ARecycleViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/nbo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/nbo;


# direct methods
.method constructor <init>(Lc8/nbo;)V
    .locals 0
    .param p1, "this$0"    # Lc8/nbo;

    .prologue
    .line 281
    .local p0, "this":Lc8/lbo;, "Lcom/youku/us/baseuikit/fragment/ARecycleViewFragment$1;"
    iput-object p1, p0, Lc8/lbo;->this$0:Lc8/nbo;

    invoke-direct {p0}, Lc8/Cv;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Lc8/Rv;I)V
    .locals 2
    .param p1, "recyclerView"    # Lc8/Rv;
    .param p2, "newState"    # I

    .prologue
    .line 292
    .local p0, "this":Lc8/lbo;, "Lcom/youku/us/baseuikit/fragment/ARecycleViewFragment$1;"
    invoke-super {p0, p1, p2}, Lc8/Cv;->onScrollStateChanged(Lc8/Rv;I)V

    .line 293
    packed-switch p2, :pswitch_data_0

    .line 308
    :goto_0
    return-void

    .line 295
    :pswitch_0
    iget-object v0, p0, Lc8/lbo;->this$0:Lc8/nbo;

    iget-object v0, v0, Lc8/nbo;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onScrollStateChanged.SCROLL_STATE_IDLE"

    invoke-static {v0, v1}, Lc8/Oao;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 299
    :pswitch_1
    iget-object v0, p0, Lc8/lbo;->this$0:Lc8/nbo;

    iget-object v0, v0, Lc8/nbo;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onScrollStateChanged.SCROLL_STATE_DRAGGING"

    invoke-static {v0, v1}, Lc8/Oao;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lc8/lbo;->this$0:Lc8/nbo;

    iget-object v0, v0, Lc8/nbo;->xRecyclerView:Lc8/veo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc8/veo;->setRefreshing(Z)V

    goto :goto_0

    .line 304
    :pswitch_2
    iget-object v0, p0, Lc8/lbo;->this$0:Lc8/nbo;

    iget-object v0, v0, Lc8/nbo;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onScrollStateChanged.SCROLL_STATE_SETTLING"

    invoke-static {v0, v1}, Lc8/Oao;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 293
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onScrolled(Lc8/Rv;II)V
    .locals 0
    .param p1, "recyclerView"    # Lc8/Rv;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 288
    .local p0, "this":Lc8/lbo;, "Lcom/youku/us/baseuikit/fragment/ARecycleViewFragment$1;"
    return-void
.end method
