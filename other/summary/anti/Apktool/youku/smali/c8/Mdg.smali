.class public Lc8/Mdg;
.super Lc8/Jdg;
.source "WidgetGroup.java"


# annotations
.annotation build Lc8/O;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/Ldg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/Gdg;)V
    .locals 1
    .param p1, "context"    # Lc8/Gdg;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lc8/Jdg;-><init>(Lc8/Gdg;)V

    .line 33
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lc8/Mdg;->mChildren:Ljava/util/List;

    .line 37
    return-void
.end method


# virtual methods
.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lc8/Ldg;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lc8/Mdg;->mChildren:Ljava/util/List;

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 50
    iget-object v2, p0, Lc8/Mdg;->mChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Ldg;

    .line 51
    .local v0, "child":Lc8/Ldg;
    invoke-interface {v0, p1}, Lc8/Ldg;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 53
    .end local v0    # "child":Lc8/Ldg;
    :cond_0
    return-void
.end method

.method public replaceAll(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/Ldg;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, "widgets":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/ui/flat/widget/Widget;>;"
    iput-object p1, p0, Lc8/Mdg;->mChildren:Ljava/util/List;

    .line 41
    invoke-virtual {p0}, Lc8/Mdg;->invalidate()V

    .line 42
    return-void
.end method

.method public bridge synthetic setBackgroundAndBorder(Lc8/Ieg;)V
    .locals 0
    .param p1, "x0"    # Lc8/Ieg;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lc8/Jdg;->setBackgroundAndBorder(Lc8/Ieg;)V

    return-void
.end method

.method public bridge synthetic setContentBox(IIII)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I

    .prologue
    .line 30
    invoke-super {p0, p1, p2, p3, p4}, Lc8/Jdg;->setContentBox(IIII)V

    return-void
.end method

.method public bridge synthetic setLayout(IIIIIILandroid/graphics/Point;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # I
    .param p7, "x6"    # Landroid/graphics/Point;

    .prologue
    .line 30
    invoke-super/range {p0 .. p7}, Lc8/Jdg;->setLayout(IIIIIILandroid/graphics/Point;)V

    return-void
.end method
