.class public interface abstract Lc8/Ldg;
.super Ljava/lang/Object;
.source "Widget.java"


# annotations
.annotation build Lc8/O;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Widget"


# virtual methods
.method public abstract draw(Landroid/graphics/Canvas;)V
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getBackgroundAndBorder()Lc8/Ieg;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract getBorderBox()Landroid/graphics/Rect;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract getLocInFlatContainer()Landroid/graphics/Point;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract onDraw(Landroid/graphics/Canvas;)V
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setBackgroundAndBorder(Lc8/Ieg;)V
    .param p1    # Lc8/Ieg;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setContentBox(IIII)V
.end method

.method public abstract setLayout(IIIIIILandroid/graphics/Point;)V
.end method
