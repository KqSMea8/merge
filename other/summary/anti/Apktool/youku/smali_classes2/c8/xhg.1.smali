.class public Lc8/xhg;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/yhg;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc8/yhg;


# direct methods
.method constructor <init>(Lc8/yhg;)V
    .locals 0

    .prologue
    .line 379
    iput-object p1, p0, Lc8/xhg;->a:Lc8/yhg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Lc8/xhg;->a:Lc8/yhg;

    iget-object v0, v0, Lc8/yhg;->a:Lc8/Chg;

    invoke-static {v0}, Lc8/Chg;->e(Lc8/Chg;)Lc8/Wlg;

    move-result-object v0

    iget-object v1, p0, Lc8/xhg;->a:Lc8/yhg;

    iget-object v1, v1, Lc8/yhg;->a:Lc8/Chg;

    invoke-static {v1}, Lc8/Chg;->i(Lc8/Chg;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/Wlg;->loadUrl(Ljava/lang/String;)V

    .line 384
    return-void
.end method
