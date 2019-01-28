.class public Lc8/Idg;
.super Lc8/Jdg;
.source "AndroidViewWidget.java"

# interfaces
.implements Lc8/uXf;


# annotations
.annotation build Lc8/O;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private mView:Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/Gdg;)V
    .locals 0
    .param p1, "context"    # Lc8/Gdg;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lc8/Jdg;-><init>(Lc8/Gdg;)V

    .line 37
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lc8/Idg;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Idg;->mView:Landroid/view/View;

    .line 75
    :cond_0
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lc8/Idg;->mView:Landroid/view/View;

    return-object v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 60
    invoke-super {p0}, Lc8/Jdg;->invalidate()V

    .line 61
    iget-object v0, p0, Lc8/Idg;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lc8/Idg;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 64
    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 53
    iget-object v0, p0, Lc8/Idg;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lc8/Idg;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 56
    :cond_0
    return-void
.end method

.method public bridge synthetic setBackgroundAndBorder(Lc8/Ieg;)V
    .locals 0
    .param p1, "x0"    # Lc8/Ieg;

    .prologue
    .line 31
    invoke-super {p0, p1}, Lc8/Jdg;->setBackgroundAndBorder(Lc8/Ieg;)V

    return-void
.end method

.method public setContentBox(IIII)V
    .locals 1
    .param p1, "leftOffset"    # I
    .param p2, "topOffset"    # I
    .param p3, "rightOffset"    # I
    .param p4, "bottomOffset"    # I

    .prologue
    .line 45
    iget-object v0, p0, Lc8/Idg;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lc8/Idg;->mView:Landroid/view/View;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    .line 47
    invoke-virtual {p0}, Lc8/Idg;->invalidate()V

    .line 49
    :cond_0
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 40
    iput-object p1, p0, Lc8/Idg;->mView:Landroid/view/View;

    .line 41
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
    .line 31
    invoke-super/range {p0 .. p7}, Lc8/Jdg;->setLayout(IIIIIILandroid/graphics/Point;)V

    return-void
.end method
