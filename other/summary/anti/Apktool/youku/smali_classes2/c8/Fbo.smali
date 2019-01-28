.class public Lc8/Fbo;
.super Lc8/Cv;
.source "PageRecyclerViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Hbo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Hbo;


# direct methods
.method constructor <init>(Lc8/Hbo;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Hbo;

    .prologue
    .line 45
    .local p0, "this":Lc8/Fbo;, "Lcom/youku/us/baseuikit/stream/PageRecyclerViewFragment$1;"
    iput-object p1, p0, Lc8/Fbo;->this$0:Lc8/Hbo;

    invoke-direct {p0}, Lc8/Cv;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Lc8/Rv;I)V
    .locals 2
    .param p1, "recyclerView"    # Lc8/Rv;
    .param p2, "newState"    # I

    .prologue
    .line 52
    .local p0, "this":Lc8/Fbo;, "Lcom/youku/us/baseuikit/stream/PageRecyclerViewFragment$1;"
    invoke-super {p0, p1, p2}, Lc8/Cv;->onScrollStateChanged(Lc8/Rv;I)V

    .line 53
    packed-switch p2, :pswitch_data_0

    .line 65
    :goto_0
    return-void

    .line 55
    :pswitch_0
    iget-object v0, p0, Lc8/Fbo;->this$0:Lc8/Hbo;

    invoke-static {v0}, Lc8/Hbo;->access$000(Lc8/Hbo;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onScrollStateChanged.SCROLL_STATE_IDLE"

    invoke-static {v0, v1}, Lc8/Oao;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :pswitch_1
    iget-object v0, p0, Lc8/Fbo;->this$0:Lc8/Hbo;

    invoke-static {v0}, Lc8/Hbo;->access$100(Lc8/Hbo;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onScrollStateChanged.SCROLL_STATE_DRAGGING"

    invoke-static {v0, v1}, Lc8/Oao;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lc8/Fbo;->this$0:Lc8/Hbo;

    iget-object v0, v0, Lc8/Hbo;->xRecyclerView:Lc8/veo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc8/veo;->setRefreshing(Z)V

    goto :goto_0

    .line 62
    :pswitch_2
    iget-object v0, p0, Lc8/Fbo;->this$0:Lc8/Hbo;

    invoke-static {v0}, Lc8/Hbo;->access$200(Lc8/Hbo;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onScrollStateChanged.SCROLL_STATE_SETTLING"

    invoke-static {v0, v1}, Lc8/Oao;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 53
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
    .line 48
    .local p0, "this":Lc8/Fbo;, "Lcom/youku/us/baseuikit/stream/PageRecyclerViewFragment$1;"
    return-void
.end method
