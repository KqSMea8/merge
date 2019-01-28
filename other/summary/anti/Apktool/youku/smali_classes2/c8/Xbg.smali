.class public Lc8/Xbg;
.super Ljava/lang/Object;
.source "WXScroller.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/acg;->initComponentHostView(Landroid/content/Context;)Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/acg;


# direct methods
.method constructor <init>(Lc8/acg;)V
    .locals 0

    .prologue
    .line 458
    iput-object p1, p0, Lc8/Xbg;->this$0:Lc8/acg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 462
    iget-object v1, p0, Lc8/Xbg;->this$0:Lc8/acg;

    invoke-static {v1, v2, v2, v2, v2}, Lc8/acg;->access$200(Lc8/acg;IIII)V

    .line 464
    iget-object v1, p0, Lc8/Xbg;->this$0:Lc8/acg;

    invoke-virtual {v1}, Lc8/acg;->getHostView()Landroid/view/View;

    move-result-object v0

    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 472
    :goto_0
    return-void

    .line 467
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    .line 468
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 470
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method
