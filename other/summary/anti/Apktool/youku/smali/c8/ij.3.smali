.class public Lc8/ij;
.super Lc8/hj;
.source "DrawableWrapperGingerbread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/jj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DrawableWrapperStateBase"
.end annotation


# direct methods
.method public constructor <init>(Lc8/hj;Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "orig"    # Lc8/hj;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "res"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 380
    invoke-direct {p0, p1, p2}, Lc8/hj;-><init>(Lc8/hj;Landroid/content/res/Resources;)V

    .line 381
    return-void
.end method


# virtual methods
.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 385
    new-instance v0, Lc8/jj;

    invoke-direct {v0, p0, p1}, Lc8/jj;-><init>(Lc8/hj;Landroid/content/res/Resources;)V

    return-object v0
.end method
