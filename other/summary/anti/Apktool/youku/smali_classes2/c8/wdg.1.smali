.class public Lc8/wdg;
.super Lc8/Cv;
.source "WXRecyclerTemplateList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Bdg;->addEvent(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private mFirstEvent:Z

.field private offsetXCorrection:I

.field private offsetYCorrection:I

.field final synthetic this$0:Lc8/Bdg;


# direct methods
.method constructor <init>(Lc8/Bdg;)V
    .locals 1

    .prologue
    .line 847
    iput-object p1, p0, Lc8/wdg;->this$0:Lc8/Bdg;

    invoke-direct {p0}, Lc8/Cv;-><init>()V

    .line 849
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/wdg;->mFirstEvent:Z

    return-void
.end method


# virtual methods
.method public onScrolled(Lc8/Rv;II)V
    .locals 5
    .param p1, "recyclerView"    # Lc8/Rv;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 853
    invoke-super {p0, p1, p2, p3}, Lc8/Cv;->onScrolled(Lc8/Rv;II)V

    .line 854
    invoke-virtual {p1}, Lc8/Rv;->getLayoutManager()Lc8/xv;

    move-result-object v0

    .line 855
    .local v0, "layoutManager":Lc8/xv;
    invoke-virtual {v0}, Lc8/xv;->canScrollVertically()Z

    move-result v3

    if-nez v3, :cond_1

    .line 883
    :cond_0
    :goto_0
    return-void

    .line 858
    :cond_1
    invoke-virtual {p1}, Lc8/Rv;->computeHorizontalScrollOffset()I

    move-result v1

    .line 859
    .local v1, "offsetX":I
    invoke-virtual {p1}, Lc8/Rv;->computeVerticalScrollOffset()I

    move-result v2

    .line 861
    .local v2, "offsetY":I
    if-nez p2, :cond_2

    if-nez p3, :cond_2

    .line 862
    iput v1, p0, Lc8/wdg;->offsetXCorrection:I

    .line 863
    iput v2, p0, Lc8/wdg;->offsetYCorrection:I

    .line 864
    const/4 v1, 0x0

    .line 865
    const/4 v2, 0x0

    .line 870
    :goto_1
    iget-object v3, p0, Lc8/wdg;->this$0:Lc8/Bdg;

    invoke-virtual {v3}, Lc8/Bdg;->getScrollStartEndHelper()Lc8/Gcg;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lc8/Gcg;->onScrolled(II)V

    .line 871
    iget-object v3, p0, Lc8/wdg;->this$0:Lc8/Bdg;

    invoke-virtual {v3}, Lc8/Bdg;->getDomObject()Lc8/qYf;

    move-result-object v3

    invoke-interface {v3}, Lc8/qYf;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v3

    const-string/jumbo v4, "scroll"

    invoke-virtual {v3, v4}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 874
    iget-boolean v3, p0, Lc8/wdg;->mFirstEvent:Z

    if-eqz v3, :cond_3

    .line 876
    const/4 v3, 0x0

    iput-boolean v3, p0, Lc8/wdg;->mFirstEvent:Z

    goto :goto_0

    .line 867
    :cond_2
    iget v3, p0, Lc8/wdg;->offsetXCorrection:I

    sub-int/2addr v1, v3

    .line 868
    iget v3, p0, Lc8/wdg;->offsetYCorrection:I

    sub-int/2addr v2, v3

    goto :goto_1

    .line 880
    :cond_3
    iget-object v3, p0, Lc8/wdg;->this$0:Lc8/Bdg;

    invoke-static {v3, v1, v2}, Lc8/Bdg;->access$300(Lc8/Bdg;II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 881
    iget-object v3, p0, Lc8/wdg;->this$0:Lc8/Bdg;

    invoke-static {v3, p1, v1, v2}, Lc8/Bdg;->access$400(Lc8/Bdg;Lc8/Rv;II)V

    goto :goto_0
.end method
