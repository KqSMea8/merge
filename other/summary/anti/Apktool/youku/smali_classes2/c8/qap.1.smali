.class public Lc8/qap;
.super Landroid/widget/ScrollView;
.source "RLScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/pap;
    }
.end annotation


# instance fields
.field private onScrollChangedListener:Lc8/pap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method


# virtual methods
.method protected onScrollChanged(IIII)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "oldX"    # I
    .param p4, "oldY"    # I

    .prologue
    .line 36
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 37
    iget-object v0, p0, Lc8/qap;->onScrollChangedListener:Lc8/pap;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lc8/qap;->onScrollChangedListener:Lc8/pap;

    invoke-interface {v0, p1, p2, p3, p4}, Lc8/pap;->onScrollChanged(IIII)V

    .line 40
    :cond_0
    return-void
.end method

.method public setOnScrollListener(Lc8/pap;)V
    .locals 0
    .param p1, "onScrollChangedListener"    # Lc8/pap;

    .prologue
    .line 31
    iput-object p1, p0, Lc8/qap;->onScrollChangedListener:Lc8/pap;

    .line 32
    return-void
.end method
