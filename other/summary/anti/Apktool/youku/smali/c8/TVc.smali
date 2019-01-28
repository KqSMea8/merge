.class public Lc8/TVc;
.super Lc8/RVc;
.source "CardStack.java"


# instance fields
.field private cards:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lc8/SVc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lc8/RVc;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/TVc;->cards:Ljava/util/ArrayList;

    .line 17
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "cardType"    # I

    .prologue
    .line 20
    invoke-direct {p0}, Lc8/TVc;-><init>()V

    .line 21
    iput p1, p0, Lc8/TVc;->cardType:I

    .line 22
    return-void
.end method

.method private convert(Landroid/view/View;)Z
    .locals 6
    .param p1, "convertView"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 60
    iget-object v4, p0, Lc8/TVc;->cards:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v4, v5, :cond_1

    .line 85
    :cond_0
    :goto_0
    return v3

    .line 65
    :cond_1
    sget v4, Lcom/youku/phone/R$id;->stackContainer:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 66
    .local v1, "container":Landroid/widget/RelativeLayout;
    if-eqz v1, :cond_0

    .line 71
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v4

    if-ne v4, v5, :cond_0

    .line 77
    iget-object v4, p0, Lc8/TVc;->cards:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SVc;

    .line 78
    .local v0, "card":Lc8/SVc;
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 80
    .local v2, "convertCardView":Landroid/view/View;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v0}, Lc8/SVc;->getId()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 85
    invoke-virtual {v0, v2}, Lc8/SVc;->convert(Landroid/view/View;)Z

    move-result v3

    goto :goto_0
.end method


# virtual methods
.method public add(Lc8/SVc;)V
    .locals 1
    .param p1, "newCard"    # Lc8/SVc;

    .prologue
    .line 29
    iget-object v0, p0, Lc8/TVc;->cards:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    return-void
.end method

.method public getCards()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lc8/SVc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lc8/TVc;->cards:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lc8/TVc;->getView(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getView(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 39
    if-eqz p2, :cond_0

    .line 41
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/youku/phone/R$id;->stackRoot:I

    if-ne v0, v1, :cond_0

    .line 42
    invoke-direct {p0, p2}, Lc8/TVc;->convert(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    .end local p2    # "convertView":Landroid/view/View;
    :goto_0
    return-object p2

    .line 45
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Lc8/TVc;->cards:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/TVc;->cards:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lc8/TVc;->cards:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 46
    iget-object v0, p0, Lc8/TVc;->cards:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/SVc;

    invoke-virtual {v0, p1}, Lc8/SVc;->getCardContent(Landroid/content/Context;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 48
    :cond_1
    new-instance p2, Landroid/view/View;

    .end local p2    # "convertView":Landroid/view/View;
    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method
