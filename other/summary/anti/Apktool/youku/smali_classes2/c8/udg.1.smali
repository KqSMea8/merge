.class public Lc8/udg;
.super Ljava/lang/Object;
.source "WXRecyclerTemplateList.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Bdg;->initComponentHostView(Landroid/content/Context;)Lc8/Ifg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Bdg;


# direct methods
.method constructor <init>(Lc8/Bdg;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lc8/udg;->this$0:Lc8/Bdg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 301
    iget-object v1, p0, Lc8/udg;->this$0:Lc8/Bdg;

    invoke-virtual {v1}, Lc8/Bdg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/Ifg;

    .local v0, "view":Lc8/Ifg;
    if-nez v0, :cond_0

    .line 309
    :goto_0
    return-void

    .line 303
    :cond_0
    iget-object v1, p0, Lc8/udg;->this$0:Lc8/Bdg;

    invoke-static {v1}, Lc8/Bdg;->access$000(Lc8/Bdg;)Lc8/kfg;

    move-result-object v2

    invoke-virtual {v0}, Lc8/Ifg;->getInnerView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lc8/Rv;

    invoke-virtual {v2, v1, v3, v3}, Lc8/kfg;->onScrolled(Lc8/Rv;II)V

    .line 304
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    .line 305
    invoke-virtual {v0}, Lc8/Ifg;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 307
    :cond_1
    invoke-virtual {v0}, Lc8/Ifg;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method
