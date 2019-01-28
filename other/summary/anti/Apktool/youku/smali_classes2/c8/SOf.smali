.class public abstract Lc8/SOf;
.super Ljava/lang/Object;
.source "AbsFeature.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected mHost:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .local p0, "this":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<TT;>;"
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v1, v0}, Lc8/SOf;->constructor(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    return-void
.end method


# virtual methods
.method public abstract constructor(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end method

.method public getHost()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<TT;>;"
    iget-object v0, p0, Lc8/SOf;->mHost:Landroid/view/View;

    return-object v0
.end method

.method public setHost(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p0, "this":Lc8/SOf;, "Lcom/taobao/uikit/feature/features/AbsFeature<TT;>;"
    .local p1, "host":Landroid/view/View;, "TT;"
    iput-object p1, p0, Lc8/SOf;->mHost:Landroid/view/View;

    .line 24
    return-void
.end method
