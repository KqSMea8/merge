.class public Lc8/id;
.super Lc8/hd;
.source "CircularBorderDrawableLollipop.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation build Lc8/N;
    value = 0x15
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lc8/hd;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/graphics/Outline;)V
    .locals 1
    .param p1, "outline"    # Landroid/graphics/Outline;

    .prologue
    .line 32
    iget-object v0, p0, Lc8/id;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lc8/id;->copyBounds(Landroid/graphics/Rect;)V

    .line 33
    iget-object v0, p0, Lc8/id;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setOval(Landroid/graphics/Rect;)V

    .line 34
    return-void
.end method
