.class public Lc8/EZo;
.super Landroid/widget/ScrollView;
.source "HeaderAnimScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/DZo;
    }
.end annotation


# instance fields
.field private mContainer:Landroid/view/ViewGroup;

.field private mContent:Landroid/view/ViewGroup;

.field private mFooter:Landroid/view/ViewGroup;

.field private mHeader:Landroid/view/ViewGroup;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mOnScrollChangeListener:Lc8/DZo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    invoke-direct {p0}, Lc8/EZo;->init()V

    .line 26
    invoke-direct {p0}, Lc8/EZo;->findView()V

    .line 27
    invoke-direct {p0}, Lc8/EZo;->initView()V

    .line 28
    invoke-direct {p0}, Lc8/EZo;->setListener()V

    .line 29
    return-void
.end method

.method private clearAndAddContent(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 2
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "layoutRes"    # I

    .prologue
    .line 127
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 128
    iget-object v0, p0, Lc8/EZo;->mLayoutInflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 129
    return-object p1
.end method

.method private clearAndAddContent(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 114
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 116
    if-eqz p2, :cond_0

    .line 117
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 120
    :cond_0
    return-object p1
.end method

.method private findView()V
    .locals 1

    .prologue
    .line 38
    sget v0, Lcom/youku/phone/R$id;->vg_widget_header_anim_scroll_view_container:I

    invoke-virtual {p0, v0}, Lc8/EZo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lc8/EZo;->mContainer:Landroid/view/ViewGroup;

    .line 39
    sget v0, Lcom/youku/phone/R$id;->vg_widget_header_anim_scroll_view_header:I

    invoke-virtual {p0, v0}, Lc8/EZo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lc8/EZo;->mHeader:Landroid/view/ViewGroup;

    .line 40
    sget v0, Lcom/youku/phone/R$id;->vg_widget_header_anim_scroll_view_content:I

    invoke-virtual {p0, v0}, Lc8/EZo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lc8/EZo;->mContent:Landroid/view/ViewGroup;

    .line 41
    sget v0, Lcom/youku/phone/R$id;->vg_widget_header_anim_scroll_view_footer:I

    invoke-virtual {p0, v0}, Lc8/EZo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lc8/EZo;->mFooter:Landroid/view/ViewGroup;

    .line 42
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 32
    invoke-virtual {p0}, Lc8/EZo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lc8/EZo;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 33
    iget-object v0, p0, Lc8/EZo;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/youku/phone/R$layout;->widget_header_anim_scroll_view:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 35
    return-void
.end method

.method private initView()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method private setListener()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method


# virtual methods
.method protected onScrollChanged(IIII)V
    .locals 1
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 61
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 63
    iget-object v0, p0, Lc8/EZo;->mOnScrollChangeListener:Lc8/DZo;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lc8/EZo;->mOnScrollChangeListener:Lc8/DZo;

    invoke-interface {v0, p1, p2, p3, p4}, Lc8/DZo;->onScrollChanged(IIII)V

    .line 66
    :cond_0
    return-void
.end method

.method public setContent(I)Landroid/view/View;
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 93
    iget-object v0, p0, Lc8/EZo;->mContent:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, p1}, Lc8/EZo;->clearAndAddContent(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setContent(Landroid/view/View;)Landroid/view/View;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 86
    iget-object v0, p0, Lc8/EZo;->mContent:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, p1}, Lc8/EZo;->clearAndAddContent(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setFooter(I)Landroid/view/View;
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 107
    iget-object v0, p0, Lc8/EZo;->mFooter:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, p1}, Lc8/EZo;->clearAndAddContent(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setFooter(Landroid/view/View;)Landroid/view/View;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 100
    iget-object v0, p0, Lc8/EZo;->mFooter:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, p1}, Lc8/EZo;->clearAndAddContent(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setHeader(I)Landroid/view/View;
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 79
    iget-object v0, p0, Lc8/EZo;->mHeader:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, p1}, Lc8/EZo;->clearAndAddContent(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setHeader(Landroid/view/View;)Landroid/view/View;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 72
    iget-object v0, p0, Lc8/EZo;->mHeader:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, p1}, Lc8/EZo;->clearAndAddContent(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setOnScrollChangeListener(Lc8/DZo;)V
    .locals 0
    .param p1, "onScrollChangeListener"    # Lc8/DZo;

    .prologue
    .line 135
    iput-object p1, p0, Lc8/EZo;->mOnScrollChangeListener:Lc8/DZo;

    .line 136
    return-void
.end method
