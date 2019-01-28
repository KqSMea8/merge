.class public final Lc8/Eqd;
.super Ljava/lang/Object;
.source "PullToRefreshWebView.java"

# interfaces
.implements Lc8/mqd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Hqd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/mqd",
        "<",
        "Landroid/webkit/WebView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh(Lc8/oqd;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/oqd",
            "<",
            "Landroid/webkit/WebView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, "refreshView":Lc8/oqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/webkit/WebView;>;"
    invoke-virtual {p1}, Lc8/oqd;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 36
    return-void
.end method
