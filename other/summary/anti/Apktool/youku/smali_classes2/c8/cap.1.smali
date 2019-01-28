.class public final Lc8/cap;
.super Lc8/bap;
.source "LoadingMoreFooter_Logo.java"


# instance fields
.field private logo_view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lc8/bap;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lc8/bap;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method


# virtual methods
.method public initView()V
    .locals 3

    .prologue
    .line 32
    invoke-super {p0}, Lc8/bap;->initView()V

    .line 33
    invoke-virtual {p0}, Lc8/cap;->setProgressStyle()V

    .line 34
    iget-object v0, p0, Lc8/cap;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/youku/phone/R$layout;->loading_more_footer_logo:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lc8/cap;->logo_view:Landroid/view/View;

    .line 35
    return-void
.end method

.method public setProgressStyle()V
    .locals 0

    .prologue
    .line 64
    invoke-super {p0}, Lc8/bap;->setProgressStyle()V

    .line 65
    return-void
.end method

.method public setState(I)V
    .locals 6
    .param p1, "state"    # I

    .prologue
    const/16 v5, 0x8

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 39
    invoke-super {p0, p1}, Lc8/bap;->setState(I)V

    .line 40
    packed-switch p1, :pswitch_data_0

    .line 56
    iget-object v1, p0, Lc8/cap;->logo_view:Landroid/view/View;

    invoke-virtual {p0, v1}, Lc8/cap;->removeView(Landroid/view/View;)V

    .line 57
    iget-object v1, p0, Lc8/cap;->mText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 60
    :goto_0
    return-void

    .line 42
    :pswitch_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lc8/cap;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$dimen;->tab_guess_videos_login_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-direct {v0, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 43
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 44
    invoke-virtual {p0, v0}, Lc8/cap;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    invoke-virtual {p0, v3, v3, v3, v3}, Lc8/cap;->setPadding(IIII)V

    .line 46
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lc8/cap;->setGravity(I)V

    .line 48
    iget-object v1, p0, Lc8/cap;->logo_view:Landroid/view/View;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lc8/cap;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    iget-object v1, p0, Lc8/cap;->mText:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 51
    iget-object v1, p0, Lc8/cap;->progressCon:Lc8/Cap;

    invoke-virtual {v1, v5}, Lc8/Cap;->setVisibility(I)V

    goto :goto_0

    .line 40
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
