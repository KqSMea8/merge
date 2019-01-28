.class public abstract Lc8/SVc;
.super Lc8/RVc;
.source "Card.java"


# instance fields
.field private isTop:Z

.field protected mCardLayout:Landroid/view/View;

.field private needRebuild:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 15
    invoke-direct {p0}, Lc8/RVc;-><init>()V

    .line 50
    iput-boolean v0, p0, Lc8/SVc;->needRebuild:Z

    .line 69
    iput-boolean v0, p0, Lc8/SVc;->isTop:Z

    .line 16
    return-void
.end method


# virtual methods
.method public abstract convert(Landroid/view/View;)Z
.end method

.method public abstract getCardContent(Landroid/content/Context;)Landroid/view/View;
.end method

.method protected getCardLayout()I
    .locals 1

    .prologue
    .line 33
    sget v0, Lcom/youku/phone/R$layout;->item_card:I

    return v0
.end method

.method protected getId()I
    .locals 1

    .prologue
    .line 37
    sget v0, Lcom/youku/phone/R$id;->cardContent:I

    return v0
.end method

.method public getView(Landroid/content/Context;)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {p0}, Lc8/SVc;->getCardLayout()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 21
    .local v1, "view":Landroid/view/View;
    iput-object v1, p0, Lc8/SVc;->mCardLayout:Landroid/view/View;

    .line 23
    :try_start_0
    sget v2, Lcom/youku/phone/R$id;->cardContent:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Lc8/SVc;->getCardContent(Landroid/content/Context;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :goto_0
    return-object v1

    .line 24
    :catch_0
    move-exception v0

    .line 25
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public isNeedRebuild()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lc8/SVc;->needRebuild:Z

    return v0
.end method

.method public isTop()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lc8/SVc;->isTop:Z

    return v0
.end method

.method public onLayerChanged(Z)V
    .locals 0
    .param p1, "isTop"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lc8/SVc;->isTop:Z

    .line 67
    return-void
.end method

.method public onNewIntent(Ljava/lang/String;Lcom/youku/phone/detail/card/CardIntent;)V
    .locals 0
    .param p1, "cation"    # Ljava/lang/String;
    .param p2, "cardIntent"    # Lcom/youku/phone/detail/card/CardIntent;

    .prologue
    .line 87
    return-void
.end method

.method public setNeedRebuild(Z)V
    .locals 0
    .param p1, "needRebuild"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lc8/SVc;->needRebuild:Z

    .line 63
    return-void
.end method

.method public setTop(Z)Lc8/SVc;
    .locals 0
    .param p1, "isTop"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lc8/SVc;->isTop:Z

    .line 73
    return-object p0
.end method
