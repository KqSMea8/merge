.class public Lc8/Rbg;
.super Ljava/lang/Object;
.source "WXScroller.java"

# interfaces
.implements Lc8/weg;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/acg;->addEvent(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/acg;


# direct methods
.method constructor <init>(Lc8/acg;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lc8/Rbg;->this$0:Lc8/acg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Lc8/xeg;II)V
    .locals 0
    .param p1, "scrollView"    # Lc8/xeg;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 190
    return-void
.end method

.method public onScrollChanged(Lc8/xeg;IIII)V
    .locals 6
    .param p1, "scrollView"    # Lc8/xeg;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "oldx"    # I
    .param p5, "oldy"    # I

    .prologue
    .line 168
    iget-object v0, p0, Lc8/Rbg;->this$0:Lc8/acg;

    invoke-virtual {v0}, Lc8/acg;->getScrollStartEndHelper()Lc8/Gcg;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lc8/Gcg;->onScrolled(II)V

    .line 169
    iget-object v0, p0, Lc8/Rbg;->this$0:Lc8/acg;

    invoke-virtual {v0}, Lc8/acg;->getDomObject()Lc8/qYf;

    move-result-object v0

    invoke-interface {v0}, Lc8/qYf;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    const-string/jumbo v1, "scroll"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    iget-object v0, p0, Lc8/Rbg;->this$0:Lc8/acg;

    invoke-static {v0, p2, p3}, Lc8/acg;->access$000(Lc8/acg;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lc8/Rbg;->this$0:Lc8/acg;

    invoke-virtual {p1}, Lc8/xeg;->getContentFrame()Landroid/graphics/Rect;

    move-result-object v1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lc8/acg;->access$100(Lc8/acg;Landroid/graphics/Rect;IIII)V

    goto :goto_0
.end method

.method public onScrollStopped(Lc8/xeg;II)V
    .locals 0
    .param p1, "scrollView"    # Lc8/xeg;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 185
    return-void
.end method

.method public onScrollToBottom(Lc8/xeg;II)V
    .locals 0
    .param p1, "scrollView"    # Lc8/xeg;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 180
    return-void
.end method
