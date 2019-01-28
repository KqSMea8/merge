.class public Lc8/rcg;
.super Landroid/view/View;
.source "WXVContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/scg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BoxShadowHost"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/scg;


# direct methods
.method public constructor <init>(Lc8/scg;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 520
    .local p0, "this":Lc8/rcg;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>.BoxShadowHost;"
    iput-object p1, p0, Lc8/rcg;->this$0:Lc8/scg;

    .line 521
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 522
    return-void
.end method
