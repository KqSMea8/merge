.class public Lc8/Ks;
.super Landroid/widget/SeekBar;
.source "AppCompatSeekBar.java"


# instance fields
.field private mAppCompatSeekBarHelper:Lc8/Ls;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc8/Ks;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    sget v0, Lcom/youku/phone/R$attr;->seekBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lc8/Ks;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    new-instance v0, Lc8/Ls;

    invoke-direct {v0, p0}, Lc8/Ls;-><init>(Landroid/widget/SeekBar;)V

    iput-object v0, p0, Lc8/Ks;->mAppCompatSeekBarHelper:Lc8/Ls;

    .line 49
    iget-object v0, p0, Lc8/Ks;->mAppCompatSeekBarHelper:Lc8/Ls;

    invoke-virtual {v0, p2, p3}, Lc8/Ls;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .prologue
    .line 60
    invoke-super {p0}, Landroid/widget/SeekBar;->drawableStateChanged()V

    .line 61
    iget-object v0, p0, Lc8/Ks;->mAppCompatSeekBarHelper:Lc8/Ls;

    invoke-virtual {v0}, Lc8/Ls;->drawableStateChanged()V

    .line 62
    return-void
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation build Lc8/N;
        value = 0xb
    .end annotation

    .prologue
    .line 68
    invoke-super {p0}, Landroid/widget/SeekBar;->jumpDrawablesToCurrentState()V

    .line 69
    iget-object v0, p0, Lc8/Ks;->mAppCompatSeekBarHelper:Lc8/Ls;

    invoke-virtual {v0}, Lc8/Ls;->jumpDrawablesToCurrentState()V

    .line 70
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 55
    iget-object v0, p0, Lc8/Ks;->mAppCompatSeekBarHelper:Lc8/Ls;

    invoke-virtual {v0, p1}, Lc8/Ls;->drawTickMarks(Landroid/graphics/Canvas;)V

    .line 56
    return-void
.end method
