.class public Lc8/Kdg;
.super Lc8/Jdg;
.source "TextWidget.java"


# annotations
.annotation build Lc8/O;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private mLayout:Landroid/text/Layout;


# direct methods
.method public constructor <init>(Lc8/Gdg;)V
    .locals 0
    .param p1, "context"    # Lc8/Gdg;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lc8/Jdg;-><init>(Lc8/Gdg;)V

    .line 36
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 40
    iget-object v0, p0, Lc8/Kdg;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lc8/Kdg;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 43
    :cond_0
    return-void
.end method

.method public bridge synthetic setBackgroundAndBorder(Lc8/Ieg;)V
    .locals 0
    .param p1, "x0"    # Lc8/Ieg;

    .prologue
    .line 29
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
    .line 29
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
    .line 29
    invoke-super/range {p0 .. p7}, Lc8/Jdg;->setLayout(IIIIIILandroid/graphics/Point;)V

    return-void
.end method

.method public updateTextDrawable(Landroid/text/Layout;)V
    .locals 0
    .param p1, "layout"    # Landroid/text/Layout;

    .prologue
    .line 46
    iput-object p1, p0, Lc8/Kdg;->mLayout:Landroid/text/Layout;

    .line 47
    invoke-virtual {p0}, Lc8/Kdg;->invalidate()V

    .line 48
    return-void
.end method
